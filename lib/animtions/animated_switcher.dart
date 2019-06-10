import 'package:flutter/material.dart';


class AnimatedSwitcherDemoWidget extends StatefulWidget {
  @override
  _AnimatedSwitcherDemoWidgetState createState() =>
      _AnimatedSwitcherDemoWidgetState();
}

class _AnimatedSwitcherDemoWidgetState
    extends State<AnimatedSwitcherDemoWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                // 同一个Widget不同状态之间的切换。
                return FadeTransition(child: child, opacity: animation);
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            RaisedButton(
              child: const Text('Increment'),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
