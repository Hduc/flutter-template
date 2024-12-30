
import 'package:flutter/services.dart';

import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../log_out_screen/log_out_screen.dart';
import 'controller/profile_controller.dart';
import 'package:carwash_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor:ColorConstant.whiteA700,
          statusBarIconBrightness: Brightness.dark),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray5001,
        appBar: CustomAppBar(
          height: getVerticalSize(81),
          leadingWidth: 40,
          centerTitle: true,
          title: AppbarTitle(text: "lbl_profile".tr),
        ),
        body: GetBuilder<ProfileController>(
          init: ProfileController(),
          builder:(controller) =>  Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Container(
                    decoration: AppDecoration.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [],
                    ),
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(8),
                ),
                Expanded(
                  child: Container(
                    decoration: AppDecoration.white,
                    child: Padding(
                      padding: getPadding(left: 16, right: 16),
                      child: Column(
                        children: [
                          profileOption(() {
                            Get.toNamed(AppRoutes.profileDetailsScreen);
                          }, ImageConstant.imgUser, "lbl_profile".tr),
                          profileOption(() {
                            // controller.setPamentMethodNavigation(true);
                            Get.toNamed(AppRoutes.paymentMethodScreen);
                          }, ImageConstant.imgSave, "Payment methods"),
                          profileOption(() {
                            Get.toNamed(AppRoutes.myVehicleScreen);
                          }, ImageConstant.imgCar, "lbl_my_vehicle".tr),
                          profileOption(() {
                            Get.toNamed(AppRoutes.notificationsScreen);
                          }, ImageConstant.imgAlarm, "lbl_notification".tr),
                          profileOption(() {
                            Get.toNamed(AppRoutes.privacyPolicyScreen);
                          }, ImageConstant.imgArrowdownBlack900,
                              "lbl_privacy_policy".tr),
                          profileOption(() {
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  insetPadding: EdgeInsets.all(16),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  contentPadding: EdgeInsets.zero,
                                  content: LogOutScreen(),
                                );
                              },
                            );
                          }, ImageConstant.imgRefresh, "lbl_log_out".tr),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapArrowleft12() {
    Get.back();
  }

  Widget profileOption(function, icon, title) {

    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: ColorConstant.gray300))),
        child: Padding(
          padding: getPadding(left: 16, top: 19, bottom: 19, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomImageView(
                    svgPath: icon,
                    height: getSize(
                      22,
                    ),
                    width: getSize(
                      22,
                    ),
                  ),
                  SizedBox(
                    width: getHorizontalSize(16),
                  ),
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtBody,
                  ),
                ],
              ),
              CustomImageView(
                svgPath: ImageConstant.imgArrowright,
                height: getSize(
                  18,
                ),
                width: getSize(
                  18,
                ),
                margin: getMargin(
                  top: 2,
                  right: 6,
                  bottom: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

