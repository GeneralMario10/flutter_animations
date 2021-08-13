import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class AnimatedCrossFadeSession extends StatefulWidget {
  @override
  _AnimatedCrossFadeSessionState createState() =>
      _AnimatedCrossFadeSessionState();
}

class _AnimatedCrossFadeSessionState extends State<AnimatedCrossFadeSession>
    with TickerProviderStateMixin {
  CrossFadeState _fadeState = CrossFadeState.showFirst;
  LottieBuilder _lottie = Lottie.asset('assets/box.json',
      height: 400, width: 400, fit: BoxFit.contain, repeat: false);
  Animation _animation;
  //Animation Controller
  AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat(reverse: true)
          ..forward();
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceInOut,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Stack(
        children: <Widget>[
          Positioned(
              bottom: 0,
              left: 150,
              child: RaisedButton.icon(
                onPressed: () {
                  setState(() {
                    _fadeState = CrossFadeState.showSecond;
                    _lottie = Lottie.asset(
                      'assets/box.json',
                      height: 400,
                      width: 400,
                      fit: BoxFit.scaleDown,
                      repeat: true,
                    );
                  });
                },
                icon: Icon(Icons.tab),
                label: Text("tab here"),
                color: Colors.blue[700],
              )),
          Center(
            child: AnimatedCrossFade(
                firstChild: _lottie,
                firstCurve: Curves.bounceOut,
                secondCurve: Curves.bounceInOut,
                /*FlutterLogo(
                size: 200,
                colors: Colors.red,
              ),*/

                secondChild: ScaleTransition(
                  scale: _animation,
                  child: AnimatedContainer(
                    duration: Duration(seconds: 3),
                    curve: Curves.bounceInOut,
                    width: 400,
                    height: 400,
                    child: Text(
                      '"Beautiful things happen when you distance yourself from negativity"',
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                crossFadeState: _fadeState,
                duration: Duration(seconds: 3)),
          ),
        ],
      ),
    );
  }
}
