
import 'package:flutter/material.dart';
import 'package:hair_salon_app/presentation/verification_one_screen/shake_widget_state.dart';

class ShakeWidget extends StatefulWidget {
  const ShakeWidget({
    Key? key,
    required this.child,
    required this.shakeOffset,
    this.shakeCount = 3,
    this.shakeDuration = const Duration(milliseconds: 500),
  }) : super(key: key);
  // 1. pass a child widget
  final Widget child;
  // 2. configurable properties
  final double shakeOffset;
  final int shakeCount;
  final Duration shakeDuration;

  // 3. pass the shakeDuration as an argument to ShakeWidgetState. See below.
  @override
  // ignore: no_logic_in_create_state
  ShakeWidgetState createState() => ShakeWidgetState(shakeDuration);
}