// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/fetch_pixels.dart';
import '../../util/get/image_controller.dart';
import '../../util/get/route_key.dart';
import '../../util/widget_utils.dart';

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    TextEditingController nameController =
        TextEditingController(text: 'Robert Fox');
    TextEditingController phoneController =
        TextEditingController(text: '(480) 555-0103');
    TextEditingController emailController =
        TextEditingController(text: 'Kristinwatson58@gmail.com');
    TextEditingController dateController =
        TextEditingController(text: "2/11/12");

    var imageController = Get.put(ImageController());

    Constant.setupSize(context);

    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    EdgeInsets edgeInsets = EdgeInsets.symmetric(horizontal: horSpace);

    return WillPopScope(
      onWillPop: () async {
        Constant.backToPrev(context);
        return false;
      },
      child: Scaffold(
        backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              getVerSpace(20.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Constant.backToPrev(context);
                    },
                    child: getSvgImage(context, "arrow_back.svg", 24),
                  ),
                  getHorSpace(20.h),
                  getCustomFont("My Profile", 22, Colors.white, 1,
                      fontWeight: FontWeight.w700),
                ],
              ).paddingSymmetric(horizontal: 20.h),
              30.h.verticalSpace,
              Expanded(
                  child: ListView(
                shrinkWrap: true,
                children: [
                  30.h.verticalSpace,
                  buildProfileImage(context, imageController),
                  40.h.verticalSpace,
                  getDefaultProfileWidget(
                      context, "name.svg", "Name", nameController.text),
                  getDefaultProfileWidget(
                      context, "email.svg", "Email", emailController.text),
                  getDefaultProfileWidget(context, "phone.svg", "Phone Number",
                      phoneController.text),
                  getDefaultProfileWidget(context, "calender.svg",
                      "Date of Birth", dateController.text),
                  getDefaultProfileWidget(
                      context, "gender.svg", "Gender", "Male",
                      suffix: true),
                  getDefaultProfileWidget(
                      context, "language.svg", "Languages", "English,Hindi",
                      suffix: true),
                ],
              )),
              buildEditProfileButton(context, edgeInsets)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEditProfileButton(BuildContext context, EdgeInsets edgeInsets) {
    return getButtonFigma(context, getAccentColor(context), true,
            'Edit profile', Colors.white, () {
      Constant.sendToNext(context, editProfileRoute);
    }, edgeInsets)
        .marginSymmetric(vertical: 40.h);
  }

  Obx buildProfileImage(BuildContext context, ImageController imageController) {
    return Obx(
      () => getCircleImage(
        context,
        (imageController.imagePath.value.isNotEmpty)
            ? imageController.imagePath.value
            : 'profile1.png',
        90.h,
        fileImage: (imageController.imagePath.value.isNotEmpty),
      ),
    );
  }
}
