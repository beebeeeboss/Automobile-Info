import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Vehicles.dart';

class MyVehicles extends StatefulWidget {

  @override
  State<MyVehicles> createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {

  List<Vehicle> vehicles = [Vehicle(true,'Param','HR 78 B 7126')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Vehicles',style: TextStyle(fontWeight: FontWeight.w600),),
        toolbarHeight: 83,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
         children: [
            UpperCard(),
           AddVehicleCard(),
           ListV(vehicles)
         ],
      ),
    );
  }
}

class UpperCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 108.0 , right: 108.0) ,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
        ),
        tileColor: Colors.cyanAccent,
        title: Text('USERNAME'),
        subtitle: Text('Use Since YEAR'),
        trailing: Icon(FontAwesomeIcons.solidUserCircle),
      ),
    );
  }
}

class AddVehicleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(FontAwesomeIcons.key),
          SizedBox(height: 30,),
          TextButton(
            style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 3.4
                )),
            child: Text("Add vehicle"),
            onPressed: () {},
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 108),
      padding: EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(89, 89, 89, 50),
        borderRadius: BorderRadius.circular(18)
      ),
    );
  }
}
class ListV extends StatelessWidget {
  List<Vehicle> _list;
  ListV(this._list);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _list[0].isBike ? Icon(FontAwesomeIcons.motorcycle) : Icon(FontAwesomeIcons.car),
      title: Text(_list[0].Number),
      subtitle: Text(_list[0].owner),
    );
  }
}




