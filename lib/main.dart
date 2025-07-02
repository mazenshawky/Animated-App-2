import 'package:animated_app_2/explicit_animations/positioned_transition_example.dart';
import 'package:animated_app_2/explicit_animations/rotation_transition_example.dart';
import 'package:animated_app_2/explicit_animations/size_transition_example.dart';
import 'package:animated_app_2/implicit_animations/animated_container_example.dart';
import 'package:animated_app_2/implicit_animations/animated_crossfade_example.dart';
import 'package:animated_app_2/implicit_animations/animated_list_example.dart';
import 'package:animated_app_2/implicit_animations/animated_opacity_example.dart';
import 'package:animated_app_2/implicit_animations/animated_padding_example.dart';
import 'package:animated_app_2/implicit_animations/animated_physical_model_example.dart';
import 'package:animated_app_2/implicit_animations/animated_positioned_directional_example.dart';
import 'package:animated_app_2/implicit_animations/animated_positioned_example.dart';
import 'package:animated_app_2/implicit_animations/animated_switcher_example.dart';
import 'package:animated_app_2/implicit_animations/animated_text_style_example.dart';
import 'package:flutter/material.dart';
import 'package:animated_app_2/implicit_animations/animated_align_example.dart';

enum AnimationType { animtedFoo, fooTransition }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Animations"),
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            _myButton("Animated Align Example", const AnimatedAlignExample()),
            _myButton(
                "Animated Container Example", const AnimatedContainerExample()),
            _myButton("Animated Default Text Style Example",
                const AnimatedDefaultTextSizeExample()),
            _myButton(
                "Animated Opacity Example", const AnimatedOpacityExample()),
            _myButton(
                "Animated Padding Example", const AnimatedPaddingExample()),
            _myButton("Animated Physical Model Example",
                const AnimatedPhysicalModelExample()),
            _myButton("Animated Positioned Example",
                const AnimatedPositionedExample()),
            _myButton("Animated Positioned Directional Example",
                const AnimatedPositionedDirectionalExample()),
            _myButton(
                "Animated Crossfade Example", const AnimatedCrossFadeExample()),
            _myButton(
                "Animated Switcher Example", const AnimatedSwitcherExample()),
            _myButton("Animated List Example", const AnimatedListExample()),
            _myButton(
                "Positioned Transition Example",
                const PositionedTransitionExample(),
                AnimationType.fooTransition),
            _myButton("Size Transition Example", const SizeTransitionExample(),
                AnimationType.fooTransition),
            _myButton("Rotation Transition Example", const RotationTransitionExample(),
                AnimationType.fooTransition),
          ],
        ),
      ),
    );
  }

  Widget _myButton(String text, Widget screen,
      [AnimationType animationType = AnimationType.animtedFoo]) {
    return ElevatedButton(
      style: animationType == AnimationType.animtedFoo
          ? null
          : ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple[100]),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
      child: Text(text),
    );
  }
}
