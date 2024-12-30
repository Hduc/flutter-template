import 'controller/terms_and_condition_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_title.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

class TermsAndConditionScreen extends GetWidget<TermsAndConditionController> {
  const TermsAndConditionScreen({Key? key}) : super(key: key);

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
                    // color: /.gray200,
                    border: Border(
                      bottom: BorderSide(
                        color: appTheme.gray200,
                        width: 1.h,
                      ),
                    ),
                  ),
                  child: CustomAppBar(
                    centerTitle: true,
                    leading: AppbarLeadingImage(
                        imagePath: ImageConstant.imgArrowLeft,
                        // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                        onTap: () {
                          onTapArrowLeft();
                        }),
                    title: AppbarTitle(
                      text: "msg_terms_condition2".tr,
                    ),
                  ),
                ),
                Expanded(child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                  children: [
                    Text("msg_1_agreement_of".tr,
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 5.v),
                    Text("msg_duis_tristique_diam".tr,
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLarge16_1
                            .copyWith(height: 1.19)),
                    SizedBox(height: 20.v),
                    Text("msg_2_terms_of_services".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 16.v),
                    Text("msg_simply_dummy_text".tr,
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLarge16_1
                            .copyWith(height: 1.19)),
                    SizedBox(height: 20.v),
                    Text( "3. "+"msg_condition_of_use".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 16.v),Text(
                      "Sed sollicitudin nisi mollis libero consectetur rutrum. Nam maximus mollis nisl quis facilisis. Integer fermentum commodo nibh. Ut mollis tincidunt hendrerit. Duis ipsum velit, maximus sed commodo imperdiet, dapibus id velit. Nullam in maximus enim. Pellentesque vulputate nisi sit amet lacus pulvinar finibus. Nullam sit amet enim id nibh volutpat gravida vitae in orci. Quisque nibh nisl, congue in ex a, ultricies ultrices metus. Maecenas egestas eu ligula sed commodo. Vivamus sollicitudin risus quam Maecenas egestas eu ligula sed commodo. Vivamus sollicitudin risus quam".tr,
                      style: TextStyle(
                        color: Color(0xFF151515),
                        fontSize: 16.fSize,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 1.3,
                      ),
                    ),

                    // RichText(
                    //     text: TextSpan(children: [
                    //       TextSpan(
                    //           text: "msg_sed_sollicitudin3".tr,
                    //           style: CustomTextStyles.bodyLarge16),
                    //       TextSpan(
                    //           text: "msg_maecenas_egestas".tr,
                    //           style: CustomTextStyles.bodyLarge16)
                    //     ]),
                    //     textAlign: TextAlign.left),
                    SizedBox(height: 5.v)
                ],))

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
  //       title: AppbarTitle(text: "msg_terms_condition2".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
