import 'package:flutter/material.dart';

class ScaleTransitionWidget extends StatefulWidget {
  @override
  _ScaleTransitionWidgetState createState() => _ScaleTransitionWidgetState();
}

class _ScaleTransitionWidgetState extends State<ScaleTransitionWidget>
    with TickerProviderStateMixin {
  AnimationController _controller;
  CurvedAnimation _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..forward();
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            _controller.animateTo(0.5);
          },
          onDoubleTap: (){
            Navigator.pop(context);
          },
          child: ScaleTransition(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
            ),
            scale: _animation,
          ),
        ),
      ),
    );
  }
}
