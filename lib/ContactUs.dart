import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kyoconseilapp/NavBar.dart';
import 'chatMessageWidget.dart';

const backgroundColor = Color(0xffffffff);
const iconColor = Color(0xff09080);
const redColor = Color(0xffFF2D56);
const grayColor = Color(0xffF3F3F3);

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
                        height: 7.0,
                      ),
                      Image.asset(
                        'assets/contactus.png',
                        scale: 1.0,
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text('Contact us !',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 35,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                            'If you encounter any issues or have any concerns, please do not hesitate to contact us !',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        maxLines: 6,
                        autocorrect: true,
                        style: const TextStyle(color: Colors.black),
                        controller: _textController,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Your message',
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(width: 0.5, color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(width: 0.5, color: Colors.black),
                          ),
                          //errorBorder: InputBorder.none,
                          //disabledBorder: InputBorder.none,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      //

                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.all(4.0),
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: redColor),
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('< Go back',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Nunito',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    shadowColor: Colors.transparent,
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.all(0.0),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.all(4.0),
                                height: 35,
                                decoration: BoxDecoration(
                                    color: redColor,
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Send',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Nunito',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    shadowColor: Colors.transparent,
                                    backgroundColor: redColor,
                                    padding: EdgeInsets.all(3.0),
                                  ),
                                )),
                          )
                        ],
                      )
                    ]))))));
  }
}
