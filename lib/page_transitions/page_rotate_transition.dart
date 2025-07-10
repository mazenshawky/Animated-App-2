import 'package:flutter/material.dart';

class PageRotateTransition extends PageRouteBuilder {
  final Widget page;

  PageRotateTransition(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var myAnimation = Tween<double>(begin: 0, end: 1.0).animate(
                  CurvedAnimation(parent: animation, curve: Curves.linear));

              return RotationTransition(
                turns: myAnimation,
                child: child,
              );
            });
}
