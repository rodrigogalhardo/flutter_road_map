import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    //Status bar height
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: (statusBarHeight + barHeight),
      child: new Center(
          child: new Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 36.0
              )
          )
      ),
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
            // Array colors
              colors: [const Color(0xFF3366FF), const Color(0xFF00CCFF)],
              //position of the first color and the last color, in this case, FractionalOffset allows us to treat the coordinates as a range from 0 to 1 both for x and y.
              begin: const FractionalOffset(0.0, 0.0),
              // As we want an horizontal gradient, we use same Y for both measures, and the x changes from 0.0 (left) to 1.0 (right).
              end: const FractionalOffset(1.0, 1.0),
              // this array should have the same size than colors. It defines how the colors will distribute. [0.0, 1.0] will fill it from left to right. [0.0, 0.5] will fill the colors from left to half bar, etc.
              stops: [0.0, 1.0],
              //what to do if the stops do not fill the whole area. In this case, we added clamp (it will reuse the last color used), but as our gradient goes from 0.0 to 1.0, it’s not really necessary.
              tileMode: TileMode.clamp
          )
      ),
    );
  }
}
