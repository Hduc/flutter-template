import 'controller/iphone_14_plus_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14PlusOneScreen extends GetWidget<Iphone14PlusOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: size.height,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
