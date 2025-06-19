import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  final List<String> characters = ['tom', 'jerry', 'cheese', 'dog'];
  double _paddingValue = 10.0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Padding Example'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(characters.length, (index) {
            return AnimatedPadding(
              padding: EdgeInsets.all(_paddingValue),
              duration: const Duration(milliseconds: 400),
              curve: Curves.decelerate,
              child: Container(
                color: Colors.indigoAccent,
                child: Image.asset('assets/${characters[index]}.png'),
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(_isExpanded ? Icons.expand : Icons.expand_less),
        onPressed: () {
          setState(() {});
          _isExpanded = !_isExpanded;
          _paddingValue = _isExpanded ? 30.0 : 10.0;
        },
      ),
    );
  }
}
