import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  Color _color = Colors.grey;
  double _radius = 20.0;
  double _width = 100.0;
  double _height = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _setAnimationValues,
          child: AnimatedContainer(
            curve: Curves.bounceOut,
            width: _width,
            height: _height,
            duration: const Duration(milliseconds: 400),
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(_radius),
            ),
            child: Image.asset('assets/jerry.png'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetAnimationValues,
      ),
    );
  }

  void _setAnimationValues() {
    setState(() {});
    _color = Colors.red;
    _radius = 40.0;
    _width = 200.0;
    _height = 200.0;
  }

  void _resetAnimationValues() {
    setState(() {});
    _color = Colors.grey;
    _radius = 20.0;
    _width = 100.0;
    _height = 100.0;
  }
}
