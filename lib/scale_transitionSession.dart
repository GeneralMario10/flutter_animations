/*import 'package:flutter/material.dart';

class ScaleTransitionSession extends StatefulWidget {
  @override
  _ScaleTransitionSessionState createState() => _ScaleTransitionSessionState();
}

class _ScaleTransitionSessionState extends State<ScaleTransitionSession>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;
  @override
  void initstate() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Container(
            //height: 400,
            //width: 400,
            // style: TextStyle(fontSize: 100, color: Colors.lightBlue),

            child: Text(
              '"Dear Marian"'
              '"Beautiful things happen when you distance yourself from negativity"',
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

class ScaleTransitionSession extends StatefulWidget {
  @override
  _ScaleTransitionSessionState createState() => _ScaleTransitionSessionState();
}

class _ScaleTransitionSessionState extends State<ScaleTransitionSession>
    with SingleTickerProviderStateMixin {
  //Animation Class
  Animation _animation;
  //Animation Controller
  AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..reverse();
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceIn,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _animationController =
              AnimationController(vsync: this, duration: Duration(seconds: 2))
                ..repeat(reverse: true);
        });
      }),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Container(
            child: Text(
              '"Dear Marian"'
              '"Beautiful things happen when you distance yourself from negativity"',
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
