import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  bool converttext = true;
  TextStyle style = TextStyle(fontSize: 20, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            converttext ? converttext = false : converttext = true;
            style = TextStyle(fontSize: 50, color: Colors.pink);
          });
        },
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          child: converttext ? Text("Hello F] lutter") : Text("Bye Flutter"),
          style: style,
          duration: Duration(seconds: 1),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }
}
