// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/widgets.dart';

class RestartController extends StatefulWidget {
  final Widget child;

  const RestartController({super.key, required this.child});

  @override
  _RestartController createState() => _RestartController();

  static rebirth(BuildContext context) {
    context.findAncestorStateOfType<_RestartController>()!.restartApp();
  }
}

class _RestartController extends State<RestartController> {
  Key _key = UniqueKey();

  void restartApp() {
    setState(() {
      _key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      child: widget.child,
    );
  }
}


