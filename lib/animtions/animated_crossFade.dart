import 'package:flutter/material.dart';

class AnimatedCrossFadeDemoWidget extends StatefulWidget {
  @override
  _AnimatedCrossFadeState createState() => _AnimatedCrossFadeState();
}

class _AnimatedCrossFadeState extends State<AnimatedCrossFadeDemoWidget> {

  CrossFadeState _state = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              alignment:Alignment.center,
              firstChild: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.redAccent
                ),
              ),
              secondChild: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.redAccent
                ),
              ),
              duration: const Duration(milliseconds: 200),
              crossFadeState: _state,
            ),
            RaisedButton(onPressed: (){
              if (_state == CrossFadeState.showFirst) {
                setState(() {
                  _state = CrossFadeState.showSecond;
                });
              }else {
                setState(() {
                  _state = CrossFadeState.showFirst;
                });
              }
            },child: Text("Change"),)
          ],
        ),
      ),
    );
  }
}
