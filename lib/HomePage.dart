import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kyoconseilapp/NavBar.dart';
import 'ChatMessageWidget.dart';
import 'LatestMails.dart';

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
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                child: Center(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Welcome',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Text(' '),
                        Text('Sofiane',
                            style: TextStyle(
                                color: redColor,
                                fontFamily: 'Nunito',
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 3.0,
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
                    /////
                    Container(
                        height: 76,
                        padding: EdgeInsets.only(right: 40.0),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/mailimage.jpg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    height: 76,
                                    width: 62,
                                    padding: EdgeInsets.only(right: 12.0),
                                    decoration: BoxDecoration(
                                      color: redColor,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(100.0),
                                          bottomRight: Radius.circular(100.0),
                                          topLeft: Radius.circular(50.0),
                                          bottomLeft: Radius.circular(50.0)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset('assets/mail.png')
                                      ],
                                    ))
                              ],
                            )),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 0.0),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LatestMails()),
                                    );
                                  },
                                  child: Text('Check your latest mails',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Nunito',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Text('description description  ',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Nunito',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ))
                          ],
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ))),
          ),
        ));
  }
}

ListView _buildList() {
  return ListView.builder(itemBuilder: (context, index) {
    return ChatMessageWidget();
  });
}

/*


integrate


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
          */
