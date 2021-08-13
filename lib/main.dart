import 'package:flutter/material.dart';
import 'package:flutter_animations/animatedCont_session.dart';
import 'package:flutter_animations/animated_opacitysession.dart';
import 'package:flutter_animations/animated_physicalModal.dart';
import 'package:flutter_animations/animated_text.dart';
import 'package:flutter_animations/modal_barrier.dart';
import 'package:flutter_animations/rotation_transition.dart';
import 'package:flutter_animations/scale_transitionSession.dart';
import 'package:flutter_animations/size_transitionSession.dart';
import 'package:flutter_animations/slide_transitionSession.dart';

import 'animatedCrossFade_session.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: AnimatedCrossFadeSession()),
    );
  }
}
