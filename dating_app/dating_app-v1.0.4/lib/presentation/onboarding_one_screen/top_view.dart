import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

import 'models/onboarding_one_model.dart';

// ignore: must_be_immutable
class TopView extends StatelessWidget {
  final String? img;
  final Color? color;
   TopView({super.key, this.img, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.only(top: getSize(35)),
        child: Container(
            width: double.maxFinite,
            color: color,
            child: Image.asset(img??ImageConstant.imgOn1,fit: BoxFit.cover,)
        ),
      ),
    );
  }
  List<OnboardingOneModel> onboardingView =[
    OnboardingOneModel(
      text: 'Building relationships on trust and compatibility',
      image: ImageConstant.imgOn1,
      backColor: Color(0xFFE8E3FF),
    ),
    OnboardingOneModel(
      text: 'You can share, chat and video call with your match',
      image: ImageConstant.imgOn2,
      backColor: Color(0xFFE8E3FF),
    ),
    OnboardingOneModel(
      text: 'Don t wait anymore, find your soul mate right now!',
      image: ImageConstant.imgOn3 ,
      backColor: Color(0xFFE8E3FF),
    ),
  ];
}
