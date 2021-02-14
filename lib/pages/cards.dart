import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#DF867C'),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: HexColor('#DF867C'),
        title: Text(
          'Credit Card',
          style: TextStyle(fontFamily: 'SourceSansPro', color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/code.png'), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 20),
                  child: Container(
                    height: 250,
                    width: 175,
                    child: InkWell(
                      onTap: () {
                        _showFront();
                      },
                      child: Card(
                        color: HexColor('#6461B6'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Container(
                                    child: Icon(
                              Icons.credit_card,
                              color: HexColor('#FF9379'),
                              size: 40,
                            ))),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Front",
                                style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "The front side of a credit card.",
                                style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    color: Colors.white54,
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 20),
                  child: Container(
                    height: 250,
                    width: 175,
                    child: InkWell(
                      onTap: () {
                        _showBack();
                      },
                      child: Card(
                        elevation: 5,
                        color: HexColor('#6461B6'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Container(
                                    child: Icon(
                              Icons.card_membership_sharp,
                              color: HexColor('#FA7099'),
                              size: 40,
                            ))),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Back",
                                style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "The back portion of a credit card.",
                                style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    color: Colors.white54,
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

_showFront() async {
  const url =
      'https://console.echoar.xyz/webar?key=rough-lab-4051&entry=d94d2140-f46a-4612-94d3-f102c3d4fd0a';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_showBack() async {
  const url =
      'https://console.echoar.xyz/webar?key=rough-lab-4051&entry=a191a9c7-bc9c-40d8-ad46-5efbf14e4293';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
