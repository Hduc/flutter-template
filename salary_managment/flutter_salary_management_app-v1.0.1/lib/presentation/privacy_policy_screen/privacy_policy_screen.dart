import 'controller/privacy_policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: _buildAppBar(),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      text: "lbl_privacy_policy".tr,
                    ),
                  ),
                ),
                Expanded(child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
                  children: [
                    Text("msg_1_types_of_data".tr,
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 5.v),
                    Text("msg_duis_tristique_diam".tr,
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLarge16_1
                            .copyWith(height: 1.19)),
                    SizedBox(height: 21.v),
                    Text("msg_2_use_of_your_personal".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 13.v),
                    Container(
                        width: 377.h,
                        margin: EdgeInsets.only(right: 18.h),
                        child: Text("msg_sed_sollicitudin".tr,
                            maxLines: 8,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLarge16_1
                                .copyWith(height: 1.19))),
                    SizedBox(height: 42.v),
                    Text("msg_3_disclosure_of".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 13.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_sed_sollicitudin3".tr,
                              style: CustomTextStyles.bodyLarge16),
                          TextSpan(
                              text: "msg_maecenas_egestas".tr,
                              style: CustomTextStyles.bodyLarge16)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 5.v)
                  ],
                )),

              ]),
        ));
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //       leadingWidth: 40.h,
  //       leading: AppbarLeadingImage(
  //           imagePath: ImageConstant.imgArrowLeft,
  //           margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
  //           onTap: () {
  //             onTapArrowLeft();
  //           }),
  //       centerTitle: true,
  //       title: AppbarSubtitle(text: "lbl_privacy_policy".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
