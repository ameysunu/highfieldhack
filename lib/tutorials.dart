import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          "Explore".toUpperCase(),
          style: TextStyle(fontFamily: 'Roboto Medium'),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
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
        ],
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

// import 'package:flutter/material.dart';
// import 'package:hackpsu/chatbot.dart';
// import 'package:hackpsu/pages/cards.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Tutorials extends StatefulWidget {
//   @override
//   _TutorialsState createState() => _TutorialsState();
// }

// class _TutorialsState extends State<Tutorials> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar(
//               pinned: true,
//               backgroundColor: HexColor('#EBBF6A'),
//               floating: true,
//               automaticallyImplyLeading: false,
//               expandedHeight: 200,
//               flexibleSpace: FlexibleSpaceBar(
//                 background: Image.network(
//                   "https://images.pexels.com/photos/259200/pexels-photo-259200.jpeg?cs=srgb&dl=pexels-pixabay-259200.jpg&fm=jpg",
//                   fit: BoxFit.cover,
//                 ),
//                 centerTitle: true,
//                 titlePadding: EdgeInsets.zero,
//                 title: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "EXPLORE",
//                       style: TextStyle(
//                           fontFamily: 'Roboto Medium',
//                           fontSize: 30,
//                           color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SliverList(
//                 delegate: SliverChildListDelegate([
//               Container(
//                 color: HexColor('#EBA86A'),
//                 height: 100,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                         child: Text(
//                       "HOW CREDIT CARDS ARE USED",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: 'Roboto Medium',
//                           fontSize: 17),
//                     )),
//                     IconButton(
//                       icon: Icon(Icons.arrow_forward_ios),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => Cards()),
//                         );
//                       },
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 color: HexColor('#DF867C'),
//                 height: 100,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                         child: Text(
//                       "HOW DEBIT CARDS ARE USED",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: 'Roboto Medium',
//                           fontSize: 17),
//                     )),
//                     IconButton(
//                       icon: Icon(Icons.arrow_forward_ios),
//                       onPressed: () {
//                         null;
//                       },
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 color: HexColor('#BA718C'),
//                 height: 100,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                         child: Text(
//                       "HOW TO WITHDRAW MONEY FROM THE BANK",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: 'Roboto Medium',
//                           fontSize: 15),
//                     )),
//                     IconButton(
//                       icon: Icon(Icons.arrow_forward_ios),
//                       onPressed: () {
//                         _showATM();
//                       },
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 color: HexColor('#C58B7D'),
//                 height: 100,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                         child: Text(
//                       "HOW TO SAVE MONEY",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: 'Roboto Medium',
//                           fontSize: 17),
//                     )),
//                     IconButton(
//                       icon: Icon(Icons.arrow_forward_ios),
//                       onPressed: () {
//                         null;
//                       },
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 color: HexColor('#DF867C'),
//                 height: 100,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                         child: Text(
//                       "MOBILE BANKING WITH CAPITAL ONE",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: 'Roboto Medium',
//                           fontSize: 17),
//                     )),
//                     IconButton(
//                       icon: Icon(Icons.arrow_forward_ios),
//                       onPressed: () {
//                         _showVideo();
//                       },
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 color: HexColor('#EBA86A'),
//                 height: 100,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                         child: Text(
//                       "MORE INFO",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: 'Roboto Medium',
//                           fontSize: 17),
//                     )),
//                     IconButton(
//                       icon: Icon(Icons.arrow_forward_ios),
//                       onPressed: () {
//                         null;
//                       },
//                     )
//                   ],
//                 ),
//               ),
//             ]))
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => Chat()),
//           );
//         },
//         child: Icon(
//           Icons.chat,
//           color: HexColor('#FF8886'),
//         ),
//         backgroundColor: HexColor('#F5E1DB'),
//       ),
//     );
//   }
// }

