import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'LeadingLayout.dart';

class Services extends StatefulWidget {
  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: LeadingLayout(),
        leadingWidth: double.maxFinite,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 21.5),
            child: Icon(FontAwesomeIcons.gift),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      child: const Text(
                        'Cars',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child:
                                Icon(Icons.car_rental, color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Renew Insurance'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.home_repair_service,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Doorstep Service'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: const Text(
                        'Two-wheelers',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.bike_scooter_outlined,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Renew Insurance'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.add_road_outlined,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Road-side assistance'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: const Text(
                        'Nearby Places',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.local_gas_station,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Petrol pump'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.charging_station,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Charging Station'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.car_repair_outlined,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Mechanic'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.local_car_wash,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Car wash service'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.info_outline,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('RTO office'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: const Text(
                        'RC services',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.search_rounded,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Search Vehicle'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.arrow_circle_right,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Check FASTag'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.screen_search_desktop,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Search License'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.card_giftcard_outlined,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Vahan services'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child:
                                Icon(Icons.analytics, color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Analytics'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: const Text(
                        'Accessories',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.clean_hands,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Car clean'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.bike_scooter,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Helmets'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.clean_hands,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Gloves'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child:
                                Icon(Icons.mobile_off, color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Car electronics'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.devices_other,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Other accessories'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    GestureDetector(
                      child: const Text(
                        'Top Services',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.format_paint,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Denting painting'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.battery_charging_full,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Batteries'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.ac_unit, color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('AC services'),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: Card(
                            child: Icon(Icons.home_repair_service,
                                color: Colors.blue[500]),
                          ),
                          onTap: () {},
                        ),
                        const Text('Regular annual service'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
