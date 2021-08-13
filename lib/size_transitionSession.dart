import 'package:flutter/material.dart';

class SizeTransitiobSession extends StatefulWidget {
  @override
  _SizeTransitiobSessionState createState() => _SizeTransitiobSessionState();
}

class _SizeTransitiobSessionState extends State<SizeTransitiobSession>
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
    _animation = Tween(begin: 0.0, end: 10.0).animate(_animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            _animation =
                Tween(begin: 0.0, end: 10.0).animate(_animationController);
          });
        }),
        body: SizeTransition(
          sizeFactor: _animation,
          child: FlutterLogo(
            size: 200,
          ),
        ));
  }
}
