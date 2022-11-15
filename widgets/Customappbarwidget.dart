import 'package:covid19appwork/core/flutter_icons.dart';
import "package:flutter/material.dart";

class Customappbarwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(FlutterIcons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage("assets/images/profile.png"))),
        )
      ],
    );
  }
}