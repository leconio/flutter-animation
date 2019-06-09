import 'package:flutter/material.dart';

import 'animtions/transition.dart';
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
        title: Text("动画"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return TweenWidget();
                }));
              },
              child: Text("Tween"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return TransitionWidget();
                }));
              },
              child: Text("Transition"),
            )
          ],
        ),
      ),
    );
  }
}