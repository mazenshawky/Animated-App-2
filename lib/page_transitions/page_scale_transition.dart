import 'package:flutter/material.dart';

class PageScaleTransition extends PageRouteBuilder {
  final Widget page;

  PageScaleTransition(this.page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return ScaleTransition(scale: animation, child: child);
          },
        );
}
