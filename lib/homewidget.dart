import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackpsu/extract.dart';
import 'package:hackpsu/split.dart';
import 'package:hackpsu/tutorials.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    Tutorials(),
    Split(),
    Extract(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: HexColor('#363636'),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(CupertinoIcons.book, color: HexColor('#FFFFFF')),
              title: new Text(
                'Tutorials',
                style: TextStyle(
                    color: HexColor('#FFFFFF'), fontFamily: 'Roboto Medium'),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(CupertinoIcons.square_split_1x2,
                  color: HexColor('#FFFFFF')),
              title: new Text(
                'Split',
                style: TextStyle(
                    color: HexColor('#FFFFFF'), fontFamily: 'Roboto Medium'),
              ),
            ),
            BottomNavigationBarItem(
              icon: new Icon(CupertinoIcons.creditcard,
                  color: HexColor('#FFFFFF')),
              title: new Text(
                'Card',
                style: TextStyle(
                    color: HexColor('#FFFFFF'), fontFamily: 'Roboto Medium'),
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
