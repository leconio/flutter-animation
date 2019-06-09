import 'package:flutter/material.dart';

class FadeTransitionWidget extends StatefulWidget {
  @override
  _FadeTransitionWidgetState createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
    with TickerProviderStateMixin {
  AnimationController _controller;
  CurvedAnimation _animation;

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(seconds: 1), vsync: this)..forward();
    _animation = new CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            // animateTo 和 forward 的区别
            // animateTo 执行动画到指定数值
            // forward 从 from 执行到 upperBound
            _controller.animateTo(0.5);
          },
          onDoubleTap: () {
            Navigator.pop(context);
          },
          child: FadeTransition(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
            ),
            opacity: _animation,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
