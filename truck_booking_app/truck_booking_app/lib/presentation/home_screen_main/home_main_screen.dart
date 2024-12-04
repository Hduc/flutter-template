import 'controller/home_four_controller.dart';
import 'models/home_four_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking_app/core/app_export.dart';


// ignore_for_file: must_be_immutable
class HomeMainScreen extends StatelessWidget {
  HomeFourController controller =
      Get.put(HomeFourController(HomeFourModel().obs));

  @override
  Widget build(BuildContext context) {
    return Container();
    // ignore: non_constant_identifier_names

  }
}
