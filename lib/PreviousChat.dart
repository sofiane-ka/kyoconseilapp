import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kyoconseilapp/NavBar.dart';
import 'chatMessageWidget.dart';

const backgroundColor = Color(0xffffffff);
const iconColor = Color(0xff09080);
const redColor = Color(0xffFF2D56);
const grayColor = Color(0xffF3F3F3);

class PreviousChat extends StatefulWidget {
  const PreviousChat({super.key});

  @override
  State<PreviousChat> createState() => _PreviousChatState();
}

class _PreviousChatState extends State<PreviousChat> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
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
                  ))),
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
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                      height: 40,
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                          color: grayColor,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.search_rounded),
                          Expanded(
                              child: TextField(
                            textCapitalization: TextCapitalization.sentences,
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
                            icon: const ImageIcon(AssetImage('assets/mic.png')),
                            onPressed: () {},
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 16.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: const [
                        Text('Check Previous chats : ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 14,
                        ),
                        // physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 20, top: 30),
                            child: previousChatItem(),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget previousChatItem() {
    return Container(
      height: 91,
      padding: const EdgeInsets.only(
        right: 40.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 91,
                  width: 62,
                  padding: const EdgeInsets.only(right: 12.0),
                  decoration: const BoxDecoration(
                    color: Color(0xffF3F3F3),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100.0),
                        bottomRight: Radius.circular(100.0),
                        topLeft: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Image.asset('assets/clock.png')],
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   margin: const EdgeInsets.symmetric(
          //       horizontal: 0.0),
          // ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Quest About ...',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Nunito',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  // const SizedBox(
                  //   height: 6,
                  // ),
                  const Text(
                    'AI generated response ...',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Nunito',
                        fontSize: 12.8,
                        fontWeight: FontWeight.normal),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Image.asset(
                        'assets/time.png',
                        width: 20,
                        height: 20,
                      ),
                      const Text(
                        '10:45',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Nunito',
                            fontSize: 8.19,
                            fontWeight: FontWeight.normal),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.calendar_month,
                      ),
                      const Text(
                        '20/20/2020',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Nunito',
                            fontSize: 8.19,
                            fontWeight: FontWeight.normal),
                      ),
                      const Spacer(),
                      const Text(
                        'see more',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Nunito',
                            fontSize: 8.19,
                            fontWeight: FontWeight.normal),
                      ),
                      const Spacer(),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
