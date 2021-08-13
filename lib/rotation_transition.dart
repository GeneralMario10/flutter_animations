import 'package:flutter/material.dart';

class RotationTransitionSession extends StatefulWidget {
  @override
  _RotationTransitionSessionState createState() =>
      _RotationTransitionSessionState();
}

class _RotationTransitionSessionState extends State<RotationTransitionSession>
    with SingleTickerProviderStateMixin {
  //Animation Class
  Animation _animation;
  //Animation Controller
  AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 8))
          ..repeat();
    _animation = Tween(begin: 0.0, end: 20.0).animate(_animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RotationTransition(
        turns: _animation,
        child: FlutterLogo(
          size: 100,
        ),
      )),
    );
  }
}
