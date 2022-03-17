import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Automobile Info'),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 22.5),
              child : Icon(FontAwesomeIcons.solidUserCircle),
            )
          ],

        ),
        body: Center(
            child: _layoutList.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidUser),
                label: 'My Vehicles'
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidCompass),
                label: 'Services'
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.car),
                label: 'Buy Cars'
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.motorcycle),
                label: 'Bikes'
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _itemTapped,
        ),
      ),
    );
  }

  void _itemTapped(int index) {
    log(index.toString());
    setState(() {
      _selectedIndex = index;
    });
  }
}
//list of layouts that contains in other files in future
  const List<Widget> _layoutList = [
    Icon(FontAwesomeIcons.home),
    Icon(FontAwesomeIcons.solidUser),
    Icon(FontAwesomeIcons.solidCompass),
    Icon(FontAwesomeIcons.car),
    Icon(FontAwesomeIcons.motorcycle),
  ];








