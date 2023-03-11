import 'package:flutter/animation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import 'model.dart';

class ChatMessageWidget extends StatefulWidget {
  const ChatMessageWidget({Key? key}) : super(key: key);

  @override
  _ChatMessageWidgetState createState() => _ChatMessageWidgetState();
}

class _ChatMessageWidgetState extends State<ChatMessageWidget> {
  bool _overlayShadow = true;

  void _dismissOverlay() {
    setState(() {
      _overlayShadow = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<ChatMessage> messages = [
      ChatMessage(text: "hello", sender: "me"),
      ChatMessage(text: "hello", sender: "me"),
      ChatMessage(text: "hello", sender: "me"),
    ];

    return GestureDetector(
        onTap: _dismissOverlay,
        child: Stack(
          children: [
            Container(
              height: 100,
              width: 200,
              color: Colors.red,
            ),
            // Expanded(
            //   child: GroupedListView<ChatMessage, DateTime>(
            //     padding: const EdgeInsets.all(8),
            //     elements: messages,
            //     reverse: true,
            //     order: GroupedListOrder.DESC,
            //     groupBy: (message) => DateTime(2023),
            //     groupHeaderBuilder: (ChatMessage message) => const SizedBox(),
            //     itemBuilder: (context, ChatMessage message) => Align(
            //       alignment: (message.sender == "me")
            //           ? Alignment.centerRight
            //           : Alignment.centerLeft,
            //       child: Card(
            //         elevation: 8,
            //         child: Padding(
            //           padding: const EdgeInsets.all(12),
            //           child: Text("hello world"),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ));
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
