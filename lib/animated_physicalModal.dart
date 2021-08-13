import 'package:flutter/material.dart';

class AnimatedPhysicalModalSession extends StatefulWidget {
  @override
  _AnimatedPhysicalModalSessionState createState() =>
      _AnimatedPhysicalModalSessionState();
}

class _AnimatedPhysicalModalSessionState
    extends State<AnimatedPhysicalModalSession> {
  Color _shadowColor = Colors.white;
  double _elevation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _shadowColor = Colors.black;
          _elevation = 2;
        });
      }),
      body: Center(
        child: AnimatedPhysicalModel(
            child: FlutterLogo(
              size: 100,
              colors: Colors.orange,
            ),
            shape: BoxShape.circle,
            curve: Curves.bounceInOut,
            elevation: _elevation,
            color: _shadowColor,
            shadowColor: _shadowColor,
            duration: Duration(seconds: 2)),
      ),
    );
  }
}
