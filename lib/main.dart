import 'package:animated_app_2/explicit_animations/animated_builder_example.dart';
import 'package:animated_app_2/explicit_animations/animated_builder_with_positioned_directional_example.dart';
import 'package:animated_app_2/explicit_animations/default_text_style_transition_example.dart';
import 'package:animated_app_2/explicit_animations/fade_transition_example.dart';
import 'package:animated_app_2/explicit_animations/indexed_stack_transition_example.dart';
import 'package:animated_app_2/explicit_animations/positioned_transition_example.dart';
import 'package:animated_app_2/explicit_animations/rotation_transition_example.dart';
import 'package:animated_app_2/explicit_animations/size_transition_example.dart';
import 'package:animated_app_2/explicit_animations/tween_animation_builder_example.dart';
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
import 'package:animated_app_2/other_animations/custom_painter_example.dart';
import 'package:animated_app_2/page_transitions/page_fade_transition.dart';
import 'package:animated_app_2/page_transitions/page_mix_scale_rotate_transition.dart';
import 'package:animated_app_2/page_transitions/page_mix_size_fade_transition.dart';
import 'package:animated_app_2/page_transitions/page_rotate_transition.dart';
import 'package:animated_app_2/page_transitions/page_scale_transition.dart';
import 'package:animated_app_2/page_transitions/page_size_transition.dart';
import 'package:animated_app_2/page_transitions/page_slide_transition.dart';
import 'package:animated_app_2/page_transitions/page_two.dart';
import 'package:flutter/material.dart';
import 'package:animated_app_2/implicit_animations/animated_align_example.dart';

enum AnimationType { animtedFoo, fooTransition, other }

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
            _myButton("Rotation Transition Example",
                const RotationTransitionExample(), AnimationType.fooTransition),
            _myButton("Animated Builder Example",
                const AnimatedBuilderExample(), AnimationType.fooTransition),
            _myButton("Fade Transition Example", const FadeTransitionExample(),
                AnimationType.fooTransition),
            _myButton(
                "Animated Builder with Positioned Directional Example",
                const AnimatedBuilderWithPositionedDirectionalExample(),
                AnimationType.fooTransition),
            _myButton(
                "Tween Animation Builder Example",
                const TweenAnimationBuilderExample(),
                AnimationType.fooTransition),
            _myButton(
                "Default Text Style Transition Example",
                const DefaultTextStyleTransitionExample(),
                AnimationType.fooTransition),
            _myButton(
                "Indexed Stack Transition Example",
                const IndexedStackTransitionExample(),
                AnimationType.fooTransition),
            _myButton(
                "Indexed Stack Transition Example",
                const IndexedStackTransitionExample(),
                AnimationType.fooTransition),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[300]),
              onPressed: () {
                Navigator.of(context).push(PageFadeTransition(const PageTwo()));
              },
              child: const Text(
                "Page Fade Transition",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[300]),
              onPressed: () {
                Navigator.of(context)
                    .push(PageScaleTransition(const PageTwo()));
              },
              child: const Text(
                "Page Scale Transition",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[300]),
              onPressed: () {
                Navigator.of(context)
                    .push(PageRotateTransition(const PageTwo()));
              },
              child: const Text(
                "Page Rotate Transition",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[300]),
              onPressed: () {
                Navigator.of(context)
                    .push(PageSlideTransition(const PageTwo()));
              },
              child: const Text(
                "Page Slide Transition",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[300]),
              onPressed: () {
                Navigator.of(context).push(PageSizeTransition(const PageTwo()));
              },
              child: const Text(
                "Page Size Transition",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[300]),
              onPressed: () {
                Navigator.of(context)
                    .push(PageMixSizeFadeTransition(const PageTwo()));
              },
              child: const Text(
                "Page Mix Size Fade Transition",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[300]),
              onPressed: () {
                Navigator.of(context)
                    .push(PageMixScaleRotateTransition(const PageTwo()));
              },
              child: const Text(
                "Page Mix Scale Rotate Transition",
                style: TextStyle(color: Colors.white),
              ),
            ),
            _myButton(
              'Custom Painter Example',
              const CustomPainterExample(),
              AnimationType.other,
            ),
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
          : animationType == AnimationType.fooTransition
              ? ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[100])
              : ElevatedButton.styleFrom(backgroundColor: Colors.purple[100]),
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
