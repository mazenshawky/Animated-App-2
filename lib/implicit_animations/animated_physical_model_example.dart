import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Physical Model Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _toggleElevation();
          },
          child: AnimatedPhysicalModel(
              color: Colors.grey,
              shadowColor: Colors.blueGrey,
              duration: const Duration(milliseconds: 400),
              curve: Curves.bounceInOut,
              elevation: _isPressed ? 60 : 0,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.pinkAccent,
                child: Image.asset('assets/tom.png'),
              )),
        ),
      ),
    );
  }

  void _toggleElevation() {
    setState(() {});
    _isPressed = !_isPressed;
  }
}
