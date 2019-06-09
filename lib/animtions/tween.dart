import 'package:flutter/material.dart';

class TweenWidget extends StatefulWidget {
  @override
  _TweenWidgetState createState() => _TweenWidgetState();
}

class _TweenWidgetState extends State<TweenWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _container;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _container =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation = Tween<double>(begin: 50, end: 300).animate(_container)
    ..addStatusListener((status){
      print("current status is: $status");
    })
    ..addListener((){
      // must be called
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_container.isCompleted) {
              Navigator.pop(context);
            } else {
              _container.forward();
            }
          },
          child: Container(
            width: _animation.value,
            height: _animation.value,
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _container.dispose();
    super.dispose();
  }
}
