import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';
import 'package:dating_app/presentation/subscription_screen/common/select_plan.dart';
import 'package:flutter/material.dart';

import 'controller/subscription_controller.dart';

class SubscriptionScreen extends GetWidget<SubscriptionController> {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.white,

        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            CustomAppBarText(
              title: 'Package',
            ),
             Divider(
              color: Color(0xFFE7E7E7),
              thickness: getSize(1.5),
             ),
              
            SelectPlan(),
            ]
        )
    );
  }



}
