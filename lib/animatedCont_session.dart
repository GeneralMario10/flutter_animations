import 'package:flutter/material.dart';

class AnimatedContainerSession extends StatefulWidget {
  @override
  _AnimatedContainerSessionState createState() =>
      _AnimatedContainerSessionState();
}

class _AnimatedContainerSessionState extends State<AnimatedContainerSession> {
  double _width = 50, _height = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: _height,
          width: _width,
          child: FloatingActionButton(onPressed: () {
            setState(() {
              _height = 200;
              _width = 200;
            });
          }),
        ),
      ),
    );
  }
}
