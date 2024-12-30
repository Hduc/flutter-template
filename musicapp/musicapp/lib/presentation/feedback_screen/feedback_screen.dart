import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';
import 'package:musicapp/widgets/custom_text_form_field.dart';

import 'controller/feedback_controller.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  FeedbackController controller = Get.put(FeedbackController());

  @override
  void initState() {
    setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.back();
          return true;
        },
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor:appTheme.bgColor,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,
                    margin: getMargin(left: 20, top: 29, bottom: 28),
                    onTap: () {
                      onTapArrowleft18();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_feedback".tr),
                styleType: Style.bgFill),
            body: Container(
              color: appTheme.bgColor,
                width: double.maxFinite,
                padding:
                    getPadding(left: 20, top: 45, right: 20, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_what_do_you_like".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleLarge),
                      CustomTextFormField(
                          controller: controller.feedbackinputController,
                          margin: getMargin(top: 13, bottom: 5),
                          contentPadding: getPadding(
                              left: 16, top: 18, right: 16, bottom: 18),
                          textStyle:
                          TextThemeHelper.text16width400Black,
                          hintStyle:
                          TextThemeHelper.bodyLargeGray600,
                          hintText: "msg_write_your_feedback".tr,
                          maxLines: 8,
                          filled: true,
                          fillColor: appTheme.gray100,
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.fillGray100,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.fillGray100,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.fillGray100,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.fillGray100)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_submit".tr,
                margin: getMargin(left: 20, right: 20, bottom: 32),
                buttonStyle: ButtonThemeHelper.fillDeeppurpleA200.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, getVerticalSize(54)))),
                buttonTextStyle: TextThemeHelper.titleMediumPrimary_1,
                onTap: () {
                  onTapSubmit();
                })));
  }

  onTapArrowleft18() {
    Get.back();
  }

  onTapSubmit() {
   Get.back();
  }
}
