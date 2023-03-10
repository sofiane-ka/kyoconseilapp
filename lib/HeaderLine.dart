import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kyoconseilapp/NavBar.dart';
import 'ChatMessageWidget.dart';

const backgroundColor = Color(0xffffffff);
const iconColor = Color(0xff09080);
const redColor = Color(0xffFF2D56);
const grayColor = Color(0xffF3F3F3);

class HeaderLine extends StatefulWidget {
  const HeaderLine({super.key});

  @override
  State<HeaderLine> createState() => _HeaderLineState();
}

class _HeaderLineState extends State<HeaderLine> {
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
                        EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0,
                    child: Center(
                        child: Column(children: [
                      SizedBox(
                        height: 20.0,
                      ),
                    ]))))));
  }
}
