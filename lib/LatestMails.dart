import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kyoconseilapp/NavBar.dart';
import 'chatMessageWidget.dart';

const backgroundColor = Color(0xffffffff);
const iconColor = Color(0xff09080);
const redColor = Color(0xffFF2D56);
const grayColor = Color(0xffF3F3F3);

class LatestMails extends StatefulWidget {
  const LatestMails({super.key});

  @override
  State<LatestMails> createState() => _LatestMailsState();
}

class _LatestMailsState extends State<LatestMails> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
            drawer: NavBar(),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0.0,
              leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ))),
              title: Image.asset(
                'assets/icon.png',
              ),
              actions: [Image.asset('assets/profile.png')],
            ),
            extendBodyBehindAppBar: true,
            backgroundColor: backgroundColor,
            body: SafeArea(
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                    child: Center(
                        child: Column(children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                          height: 40,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                              color: grayColor,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search_rounded),
                              Expanded(
                                  child: TextField(
                                textCapitalization:
                                    TextCapitalization.sentences,
                                style: const TextStyle(color: Colors.black),
                                controller: _textController,
                                decoration: const InputDecoration(
                                  hintText: 'Search',
                                  fillColor: grayColor,
                                  filled: true,
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                              )),
                              IconButton(
                                icon: ImageIcon(AssetImage('assets/mic.png')),
                                onPressed: () {},
                              )
                            ],
                          )),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Text('Latest mails',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Nunito',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )),
                      SizedBox(
                        height: 16.0,
                      ),
                      Expanded(
                          child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: grayColor,
                            borderRadius: BorderRadius.circular(12.0)),
                      ))
                    ]))))));
  }
}
