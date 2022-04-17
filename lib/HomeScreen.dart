import 'dart:developer';
import 'dart:ui';

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
    return Scaffold(
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
            child: Column(
              children: <Widget>[
                //Top Services
                Card(
                    child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.search_rounded, color: Colors.green[500]),
                          GestureDetector(
                            child: const Text('Search Vehicle'),
                            onTap: () {},
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.calculate_rounded,
                              color: Colors.blue[500]),
                          GestureDetector(
                            child: const Text('Car/Bike loan'),
                            onTap: () {},
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.car_rental, color: Colors.blue[500]),
                          GestureDetector(
                            child: const Text('Car Insurance'),
                            onTap: () {},
                          ),
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
                              color: Colors.blue[500]),
                          GestureDetector(
                            child: const Text('Bike Insurance'),
                            onTap: () {},
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.document_scanner_outlined,
                              color: Colors.blue[500]),
                          GestureDetector(
                            child: const Text('Vehicle documents'),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ])),
                //Fuel Prices
                Container(
                    margin: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              //06CDCDFF
                              flex: 2,
                              child: Icon(FontAwesomeIcons.gasPump,
                                  color: Color.fromARGB(255, 28, 201, 201)),
                            ),
                            const Expanded(
                              flex: 12,
                              child: Text('  Current fuel prices in '),
                            ),
                            Expanded(
                              flex: 6,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    primary: Colors.black,
                                    backgroundColor: Colors.cyanAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    textStyle: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    )),
                                child: Text("HARYANA"),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                child: Card(
                                  child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Petrol',
                                          style: TextStyle(
                                            fontSize: 18,
                                            backgroundColor:
                                                Colors.cyanAccent[100],
                                          ),
                                        ),
                                        Text(
                                          'Rs 95.50',
                                          style: TextStyle(fontSize: 24),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                child: Card(
                                  child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Diesel',
                                          style: TextStyle(
                                            fontSize: 18,
                                            backgroundColor:
                                                Colors.cyanAccent[100],
                                          ),
                                        ),
                                        Text(
                                          'Rs 86.75',
                                          style: TextStyle(fontSize: 24),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.cyanAccent[700],
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(
                                    width: 1.0, color: Colors.cyanAccent)),
                            textStyle: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.5),
                            minimumSize: Size.fromHeight(32),
                          ),
                          child: Text("View trends"),
                          onPressed: () {},
                        ),
                      ],
                    )),
                Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              'How tires affect your electric car performance',
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.asset(
                                'assets/images/yellow.jpg',
                                height: 70,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 2,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              'Document checklist before buying a used car',
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.asset(
                                'assets/images/yellow.jpg',
                                height: 70,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 2,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              'How to scrap your car in India',
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.asset(
                                'assets/images/yellow.jpg',
                                height: 70,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: Colors.cyanAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            textStyle: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            )),
                        child: Text("HARYANA"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
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
