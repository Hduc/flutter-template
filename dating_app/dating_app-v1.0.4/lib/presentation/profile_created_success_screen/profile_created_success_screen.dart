import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/data/pref_data.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/profile_created_success_controller.dart';

class ProfileCreatedSuccessScreen
    extends GetWidget<ProfileCreatedSuccessController> {
  const ProfileCreatedSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgGroup34160Gray100,
                  height: getVerticalSize(getSize(154)),
                  width: getHorizontalSize(getSize(156))),
              Padding(
                  padding: getPadding(top: getSize(8),bottom: getSize(10)),
                  child: Text("msg_profile_has_been".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleLarge22)),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:getSize(30)),
                child: Text("msg_our_profiles_are".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge),
              ),
              CustomElevatedButton(
                  text: "lbl_go_to_home".tr,
                  margin: getMargin(
                      left: getSize(80), top: getSize(36), right:getSize(80),),
                  buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, getVerticalSize(54.h)))),
                  buttonTextStyle: theme.textTheme.titleMedium!,
                  onTap: () {
                    PrefData.setInfo(false);
                    onTapGotohome();
                  })
            ]));
  }

  onTapGotohome() {
    Get.toNamed(
      AppRoutes.locationAccessContainer1Screen,
    );
  }
}
