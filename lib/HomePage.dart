import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'ChatMessageWidget.dart';

const backgroundColor = Color(0xffffffff);
const iconColor = Color(0xff09080);
const redColor = Color(0xffFF2D56);
const grayColor = Color(0xffF3F3F3);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                elevation: 0.0,
                leading: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                title: Image.asset(
                  'assets/icon.png',
                ),
                actions: [Image.asset('assets/profile.png')],
              ),
              extendBodyBehindAppBar: true,
              backgroundColor: backgroundColor,
              body: SafeArea(
                child: Center(
                    child: Column(children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Tap to Ask!',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 50,
                          fontWeight: FontWeight.bold)),
                  Row(
                    children: [],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Image.asset('assets/mic.png'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: redColor,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(24),
                        ),
                      )),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/note.png'),
                      SizedBox(width: 20.0),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 100,
                        width: 185,
                        child: Text('We help get your things done !',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Integrate with your email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                      height: 120,
                      decoration: BoxDecoration(
                          color: grayColor,
                          borderRadius: BorderRadius.circular(12.0)),
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: TextField(
                            autocorrect: true,
                            style: const TextStyle(color: redColor),
                            controller: _textController,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Your mail',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          )),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: redColor,
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Submit',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Nunito',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: redColor,
                                  padding: EdgeInsets.all(3.0),
                                ),
                              )),
                        ],
                      ))
                ])),

                /*
                Row(
                  children: [
                    Icon(Icons.pause_presentation),
                    Container(
                      child: Text('xxxxxxxxx'),
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.mic_external_off_rounded)),
                ChatMessageWidget(),
                Container(
                  child: Expanded(
                    child: _buildList(),
                  ),
                )
                */
              ),
            )));
  }
}

ListView _buildList() {
  return ListView.builder(itemBuilder: (context, index) {
    return ChatMessageWidget();
  });
}
