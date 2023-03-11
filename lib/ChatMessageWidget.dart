import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

import 'model.dart';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ChatMessageWidget extends StatefulWidget {
  const ChatMessageWidget({Key? key}) : super(key: key);

  @override
  _ChatMessageWidgetState createState() => _ChatMessageWidgetState();
}

Future<String> generateResponse(String prompt) async {
  const apiKey = "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";
  log("function is working");

  // var message = " $prompt" + "\n give me a suitable reply to this email";
  var url = Uri.https("api.openai.com", "/v1/completions");
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json',
      "Authorization": "Bearer $apiKey"
    },
    body: json.encode({
      "model": "text-davinci-003",
      "prompt": prompt,
      'temperature': 0,
      'max_tokens': 2000,
      'top_p': 1,
      'frequency_penalty': 0.0,
      'presence_penalty': 0.0,
    }),
  );

  // Do something with the response
  Map<String, dynamic> newresponse = jsonDecode(response.body);
  log(newresponse['choices'][0]['text'].toString());
  return newresponse['choices'][0]['text'];
}

class _ChatMessageWidgetState extends State<ChatMessageWidget> {
  bool _overlayShadow = true;
  final _textController = TextEditingController();
  bool isVoiceLoading = false;

  SpeechToText _speechToText = SpeechToText();
  FlutterTts ftts = FlutterTts();

  bool _speechEnabled = false;
  String _lastWords = '';
  List<ChatMessage> messages = [
    ChatMessage(text: "hello", sender: "me"),
    ChatMessage(text: "hello", sender: "bot"),
    ChatMessage(text: "hello", sender: "me"),
  ];

  void _dismissOverlay() {
    setState(() {
      _overlayShadow = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  void _startTalking(word) async {
    var result = await ftts.speak(word);
    if (result == 1) {
      //speaking
    } else {}
  }

  void _stopListening() async {
    setState(() {
      _speechToText.stop();
      isVoiceLoading = false;
      messages.add(ChatMessage(text: _lastWords, sender: "me"));
    });
    // setState(() {});
    generateResponse(_lastWords).then((value) {
      setState(() {
        messages.add(
          ChatMessage(
            text: value,
            sender: "bot",
          ),
        );
      });
    });

    // var string = generateResponse(_lastWords);
    // messages.add(ChatMessage(text: string.toString(), sender: "bot"));
    // setState(() {
    //   messages;
    // });
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
      // isVoiceLoading = false;
    });
    if (result.finalResult) {
      // Stop listening for speech input and call your function here
      _stopListening();
    }

    // generateResponse(_lastWords);

    //_startTalking(_lastWords);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _dismissOverlay,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.8,
        color: Colors.white.withOpacity(0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                _startListening();

                setState(() {
                  isVoiceLoading = true;
                });
              },
              child: SizedBox(
                width: 150,
                height: 150,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 150,
                        width: 150,
                        padding: const EdgeInsets.all(24),
                        decoration: const BoxDecoration(
                          color: Color(0xffFF2D56),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/mic.png'),
                      ),
                    ),
                    isVoiceLoading
                        ? const Positioned.fill(
                            child: CircularProgressIndicator(
                              strokeWidth: 8,
                              color: Color(0xffFF2D56),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            ),
            Expanded(
              child: GroupedListView<ChatMessage, DateTime>(
                padding: const EdgeInsets.all(8),
                elements: messages,
                reverse: false,
                order: GroupedListOrder.DESC,
                groupBy: (message) => DateTime(2023),
                groupHeaderBuilder: (ChatMessage message) => const SizedBox(),
                itemBuilder: (context, ChatMessage message) => Align(
                  alignment: (message.sender == "me")
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Card(
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(message.text),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _dismissOverlay,
//       child: Stack(
//         children: [
//           // Add your chat message UI here
//           // ...
//           // ...

//           // Add the overlay shadow

//           _overlayShadow
//               ? Container(
//                   color: Colors.black.withOpacity(0.5),
//                 )
//               : SizedBox.shrink(),
//         ],
//       ),
//     );
//   }
