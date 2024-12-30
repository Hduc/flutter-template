import 'common/helpline_number_common.dart';
import 'controller/helpline_number_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

class HelplineNumberScreen extends GetWidget<HelplineNumberController> {
  const HelplineNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppBar(),
        body: SafeArea(
          child: Column(
              children: [

                Container(
                  padding: EdgeInsets.symmetric(vertical: 20.v),
                  // decoration: AppDecoration.outlineGray300,
                  decoration: BoxDecoration(
                    // color: appTheme.gray200,
                    border: Border(
                      bottom: BorderSide(
                        color: appTheme.gray200,
                        width: 1.h,
                      ),
                    ),
                  ),
                  child: CustomAppBar(
                    leading: AppbarLeadingImage(
                        imagePath: ImageConstant.imgArrowLeft,
                        // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                        onTap: () {
                          onTapArrowLeft();
                        }),
                    centerTitle: true,
                    title: AppbarSubtitle(
                      text: "lbl_helpline_number".tr,
                    ),
                  ),
                ),
                Expanded(child: Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Column(
                    children: [
                      HelpLineNumberCommon(
                        imagePath: ImageConstant.imgVolume,
                        text: "lbl_whatsapp".tr,
                      ),
                      SizedBox(height: 16.v),
                      HelpLineNumberCommon(
                        imagePath: ImageConstant.imgIcFacebook,
                        text: "lbl_facebook2".tr,
                      ),
                      SizedBox(height: 16.v),
                      HelpLineNumberCommon(
                        imagePath: ImageConstant.instagram,
                        text: "lbl_instagram".tr,
                      ),
                      SizedBox(height: 16.v),
                      HelpLineNumberCommon(
                        imagePath: ImageConstant.imgIcTwitterX,
                        text: "lbl_x".tr,
                      ),
                    ],
                  ),
                ))

              ]),
        ));
  }

  /// Section Widget

  /// Section Widget


  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
