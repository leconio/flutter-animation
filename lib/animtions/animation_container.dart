import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerDemoWidget extends StatefulWidget {
  @override
  _AnimatedContainerDemoWidgetState createState() =>
      _AnimatedContainerDemoWidgetState();
}

class _AnimatedContainerDemoWidgetState
    extends State<AnimatedContainerDemoWidget> {

  double _width = 100;
  double _height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          duration: Duration(seconds: 1),
          child: GestureDetector(
            onTap: (){
              setState(() {
                int height = Random().nextInt(200);
                int width = Random().nextInt(200);
                setState(() {
                  _width = width.toDouble();
                  _height = height.toDouble();
                });
              });
            },
            onDoubleTap: (){
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
          ),
        ),
      ),
    );
  }
}
