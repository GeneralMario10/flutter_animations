import 'package:flutter/material.dart';

class SlideTransitiobSession extends StatefulWidget {
  @override
  _SlideTransitiobSessionState createState() => _SlideTransitiobSessionState();
}

class _SlideTransitiobSessionState extends State<SlideTransitiobSession>
    with SingleTickerProviderStateMixin {
//Animation Class
  Animation _animation;
  //Animation Controller
  AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..repeat();
    _animation = Tween(begin: Offset(20, 20), end: Offset(60, 100))
        .animate(_animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: null),
      body: SlideTransition(
        position: _animation,
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}
