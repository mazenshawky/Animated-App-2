import 'package:flutter/material.dart';

class PageSlideTransition extends PageRouteBuilder {
  final Widget page;

  PageSlideTransition(this.page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var tween =
                Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero);
            var offestAnimation = animation.drive(tween);
            return SlideTransition(
              position: offestAnimation,
              child: child,
            );
          },
        );
}
