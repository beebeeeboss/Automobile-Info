import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class LeadingLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Your location '),
                Icon(FontAwesomeIcons.angleDown, size: 17.0)
              ],
            ),
            SizedBox(height: 3),
            Text(
              'LOCATION',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.8),
            )
          ],
        ),
      ),
      onTap: () => {},
    );
  }
}
