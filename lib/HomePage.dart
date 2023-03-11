import 'package:flutter/material.dart';
import 'package:kyoconseilapp/NavBar.dart';
import 'package:kyoconseilapp/PreviousChat.dart';
import 'chatMessageWidget.dart';
import 'latest_mails.dart';

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
  bool showOverlay = false;
  void _showChatMessageWidget() {
    setState(() {
      showOverlay = true;
    });
  }

  void _hideChatMessageWidget() {
    setState(() {
      showOverlay = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: showOverlay ? 0.5 : 1.0,
      duration: Duration(milliseconds: 200),
      child: Scaffold(
        // backgroundColor: Colors.white,
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
          title: Image.asset(
            'assets/icon.png',
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Image.asset('assets/profile.png'))
          ],
        ),
        extendBodyBehindAppBar: true,
        backgroundColor: backgroundColor,
        body: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 18.0, vertical: 18.0),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
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
                      const SizedBox(
                        height: 3.0,
                      ),
                      const Text('Tap to Ask!',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Nunito',
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: const [],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      //the mic is here
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              showOverlay = true;
                            });
                          },
                          child: Image.asset('assets/mic.png'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: redColor,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(24),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/note.png'),
                          const SizedBox(width: 20.0),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            height: 100,
                            width: 185,
                            child: const Text('We help get your things done !',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Nunito',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      /////
                      Container(
                        height: 76,
                        padding: const EdgeInsets.only(right: 40.0),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
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
                                    padding: const EdgeInsets.only(right: 12.0),
                                    decoration: const BoxDecoration(
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LatestMails()),
                                      );
                                    },
                                    child: const Text(
                                      'Check your latest mails',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Nunito',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Text(
                                    'description description  ',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Nunito',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 76,
                              padding: const EdgeInsets.only(right: 0.0),
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/computerImage.jpg'),
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
                                          padding: const EdgeInsets.only(
                                              right: 12.0),
                                          decoration: const BoxDecoration(
                                            color: redColor,
                                            borderRadius: BorderRadius.only(
                                                topRight:
                                                    Radius.circular(100.0),
                                                bottomRight:
                                                    Radius.circular(100.0),
                                                topLeft: Radius.circular(50.0),
                                                bottomLeft:
                                                    Radius.circular(50.0)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset('assets/ring.png')
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 0.0),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const PreviousChat()),
                                            );
                                          },
                                          child: const Text(
                                            'Compose a mail',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Nunito',
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          ///
                          SizedBox(
                            width: 5.0,
                          ),

                          ///
                          ///
                          Expanded(
                            child: Container(
                              height: 76,
                              padding: const EdgeInsets.only(right: 0.0),
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage('assets/redImage.jpg'),
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
                                          padding: const EdgeInsets.only(
                                              right: 12.0),
                                          decoration: const BoxDecoration(
                                            color: redColor,
                                            borderRadius: BorderRadius.only(
                                                topRight:
                                                    Radius.circular(100.0),
                                                bottomRight:
                                                    Radius.circular(100.0),
                                                topLeft: Radius.circular(50.0),
                                                bottomLeft:
                                                    Radius.circular(50.0)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset('assets/time.png')
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 0.0),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const PreviousChat()),
                                            );
                                          },
                                          child: const Text(
                                            'Previous Chat',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Nunito',
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            if (showOverlay)
              Positioned.fill(
                child: Center(
                  child: Container(
                    // color: Colors.white,
                    child: ChatMessageWidget(),
                  ),
                ),
              ),
            if (showOverlay)
              GestureDetector(
                  // onTap: _hideChatMessageWidget,
                  // child: Container(
                  //   color: Colors.black.withOpacity(0.5),
                  // ),
                  ),
          ],
        ),
      ),
    );
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
