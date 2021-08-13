import 'package:flutter/material.dart';

class AnimatedOpacitySession extends StatefulWidget {
  @override
  _AnimatedOpacitySessionState createState() => _AnimatedOpacitySessionState();
}

class _AnimatedOpacitySessionState extends State<AnimatedOpacitySession> {
  double _opacity = 1;
  TextStyle _style = TextStyle(color: Colors.black, fontSize: 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          if (_opacity == 0) {
            _opacity = 1;
            _style = TextStyle(color: Colors.blue, fontSize: 90);
          } else {
            _opacity = 0;
          }
        });
      }),
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(seconds: 2),
          child: Text(
            "Hello",
            style: _style,
          ),
        ),
      ),
    );
  }
}
