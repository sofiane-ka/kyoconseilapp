import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'ChatMessageWidget.dart';

const backgroundColor = Color(0xffffffff);
const iconColor = Color(0xff09080);
const redColor = Color(0xffFF2D56);

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
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
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
              'assets/note.png',
            ),
            actions: [
              Icon(
                Icons.person,
                color: Colors.black,
              )
            ],
          ),
          extendBodyBehindAppBar: true,
          backgroundColor: backgroundColor,
          body: SafeArea(
            child: Center(
                child: Column(children: [
              SizedBox(
                height: 40.0,
              ),
              Text('Tap to Ask!',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Nunito',
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
              Row(
                children: [],
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                  height: 150,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.mic_external_on_rounded),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: redColor,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24),
                    ),
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
        ));
  }
}

ListView _buildList() {
  return ListView.builder(itemBuilder: (context, index) {
    return ChatMessageWidget();
  });
}
