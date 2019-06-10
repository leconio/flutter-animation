import 'package:flutter/material.dart';

import 'animtions/animated_align.dart';
import 'animtions/animated_crossFade.dart';
import 'animtions/animated_switcher.dart';
import 'animtions/animation_container.dart';
import 'animtions/transition_fade.dart';
import 'animtions/transition_scale.dart';
import 'animtions/tween.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("双击返回"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return TweenWidget();
                }));
              },
              child: Text("Tween"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FadeTransitionWidget();
                }));
              },
              child: Text("FadeTransition"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ScaleTransitionWidget();
                }));
              },
              child: Text("ScaleTransition"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AnimatedContainerDemoWidget();
                }));
              },
              child: Text("AnimatedContainer"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AnimatedSwitcherDemoWidget();
                }));
              },
              child: Text("AnimatedSwitcher"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AnimatedCrossFadeDemoWidget();
                }));
              },
              child: Text("AnimatedCrossFade"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AnimatedAlignDemoWidget();
                }));
              },
              child: Text("AnimatedAlign"),
            ),
          ],
        ),
      ),
    );
  }
}
