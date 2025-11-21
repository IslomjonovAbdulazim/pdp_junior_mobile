import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastUtils {
  static void red(String message) {
    if (message.isEmpty) return;
    toastification.show(
      type: ToastificationType.error,
      style: ToastificationStyle.flatColored,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
        ],
      ),
      showIcon: false,
      primaryColor: Color(0xff068FFF),
      closeButton: ToastCloseButton(),
      autoCloseDuration: Duration(seconds: 2),
      borderSide: BorderSide(
        width: 0,
      ),
      borderRadius: BorderRadius.circular(24),
      alignment: Alignment.topCenter,
      animationDuration: Duration(milliseconds: 300),
      animationBuilder: (context, animation, alignment, child) {
        return SlideTransition(
          position: animation.drive(
            Tween(begin: Offset(0.0, -1.0), end: Offset(0.0, 2.0)),
          ),
          child: child,
        );
      },
    );
  }
}
