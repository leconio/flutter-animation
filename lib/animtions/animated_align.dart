import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedAlignDemoWidget extends StatefulWidget {
  @override
  _AnimatedAlignDemoWidgetState createState() =>
      _AnimatedAlignDemoWidgetState();
}

class _AnimatedAlignDemoWidgetState extends State<AnimatedAlignDemoWidget> {
  List<Alignment> alignments = [
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight,
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.topRight
  ];
  Alignment alignment;

  void _buildAlignState() {
    setState(() {
      alignment = alignments[Random().nextInt(8)];
    });
  }

  @override
  Widget build(BuildContext context) {
    _buildAlignState();
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            _buildAlignState();
          },
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: AnimatedAlign(
              duration: const Duration(seconds: 1),
              alignment: alignment,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(color: Colors.green),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
