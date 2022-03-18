import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'LeadingLayout.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: LeadingLayout(),
          leadingWidth: double.maxFinite,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 22.5),
              child: Icon(FontAwesomeIcons.solidUserCircle),
            )
          ],
        ),
        body: Center(
            child: Container(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Column(children: <Widget>[
                  new Card(
                      child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.search_rounded,
                                color: Colors.green[500]),
                            const Text('Search Vehicle'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.calculate_rounded,
                                color: Colors.green[500]),
                            const Text('Car/Bike loan'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.car_rental, color: Colors.green[500]),
                            const Text('Car Insurance'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.bike_scooter_outlined,
                                color: Colors.green[500]),
                            const Text('Bike Insurance'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.document_scanner_outlined,
                                color: Colors.green[500]),
                            const Text('Vehicle documents'),
                          ],
                        ),
                      ],
                    )
                  ]))
                ]))),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidUser), label: 'My Vehicles'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidCompass), label: 'Services'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.car), label: 'Buy Cars'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.motorcycle), label: 'Bikes'),
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
