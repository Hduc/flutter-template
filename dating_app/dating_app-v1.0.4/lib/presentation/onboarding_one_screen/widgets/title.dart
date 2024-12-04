

import 'package:flutter/material.dart';

class OnTitle extends StatelessWidget {
  final String title;
  const OnTitle( {super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),textAlign: TextAlign.center,);
  }
}
