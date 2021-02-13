import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackpsu/chatbot.dart';
import 'login.dart';
import 'package:hackpsu/pages/cards.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class Tutorials extends StatefulWidget {
  @override
  _TutorialsState createState() => _TutorialsState();
}

class _TutorialsState extends State<Tutorials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Hello $name!",
          style: TextStyle(fontFamily: 'Roboto Medium'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                "Explore".toUpperCase(),
                style: TextStyle(
                    fontFamily: 'Roboto Medium',
                    color: HexColor('#5B63B7'),
                    fontSize: 25),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cards()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: HexColor('#9296F0'),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How credit cards are used",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            CupertinoIcons.chevron_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: HexColor('#9296F0'),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How debit cards are used",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          CupertinoIcons.chevron_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  _showATM();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: HexColor('#9296F0'),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How to withdraw money from bank",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            CupertinoIcons.chevron_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: HexColor('#9296F0'),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How to save money",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          CupertinoIcons.chevron_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  _showVideo();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: HexColor('#9296F0'),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Banking with American Express",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            CupertinoIcons.chevron_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: HexColor('#9296F0'),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "More info",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          CupertinoIcons.chevron_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Chat()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: HexColor('#9296F0'),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Chat with us",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            CupertinoIcons.chat_bubble_2_fill,
                            color: Colors.white,
                          ),
                        ),
                      ],
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

_showATM() async {
  const url =
      'https://console.echoar.xyz/samples/ar.js-chrome/rough-lab-4051_1604821507402/index_rough-lab-4051_1604821507402.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_showVideo() async {
  const url =
      "https://console.echoar.xyz/samples/ar.js-chrome/rough-lab-4051_1604819504912/index_rough-lab-4051_1604819504912.html";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
