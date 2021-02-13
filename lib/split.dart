import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'pages/expenses.dart';
import 'pages/iowe.dart';
import 'pages/theyowe.dart';

class Split extends StatefulWidget {
  @override
  _SplitState createState() => _SplitState();
}

class _SplitState extends State<Split> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Split your money",
          style: TextStyle(fontFamily: 'Roboto Medium'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/tutorial.png'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Expenses()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: HexColor('#9296F0'),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Check my expenses",
                          style: TextStyle(
                              fontFamily: 'Roboto Medium',
                              color: HexColor('#FFFFFF'),
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => IOwe()),
                        );
                      },
                      child: Card(
                        color: HexColor('#FFA990'),
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
                              Icons.compare_arrows_rounded,
                              color: HexColor('#756492'),
                              size: 40,
                            ))),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "You Owe",
                                style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Check how much you owe your friends",
                                style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    color: Colors.black54,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TheyOwe()),
                        );
                      },
                      child: Card(
                        elevation: 5,
                        color: HexColor('#FFA990'),
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
                              Icons.attach_money,
                              color: HexColor('#00E6E4'),
                              size: 40,
                            ))),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "They Owe",
                                style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Check how much your friends owe you.",
                                style: TextStyle(
                                    fontFamily: 'SourceSansPro',
                                    color: Colors.black54,
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
          ],
        ),
      ),
    );
  }
}
