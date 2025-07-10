import 'package:flutter/material.dart';

class PageMixScaleRotateTransition extends PageRouteBuilder {
  final Widget page;

  PageMixScaleRotateTransition(this.page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var myAnimation = Tween<double>(begin: 0, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.bounceInOut));

            var myAnimation2 = Tween<double>(begin: 0, end: 2.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.decelerate));

            return ScaleTransition(
              scale: myAnimation,
              child: RotationTransition(turns: myAnimation2, child: child),
            );
          },
        );
}
