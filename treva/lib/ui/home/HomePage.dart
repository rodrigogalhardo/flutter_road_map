import 'package:flutter/material.dart';
import 'package:treva/ui/bar/GradientAppBar.dart';
import 'package:treva/ui/home/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new Column(
      children: <Widget>[
        new GradientAppBar("treva"),
        new HomePageBody()
      ],
    ));
  }
}
