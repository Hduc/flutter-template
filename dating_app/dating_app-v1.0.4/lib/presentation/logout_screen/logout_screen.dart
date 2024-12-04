import 'controller/logout_controller.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dating_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogoutScreen extends GetWidget<LogoutController> {
  const LogoutScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLogout,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 27,
              right: 27,
            ),
            child: Container(
              margin: getMargin(
                bottom: 5,
              ),
              padding: getPadding(
                left: 30,
                top: 31,
                right: 30,
                bottom: 31,
              ),
              decoration: AppDecoration.white.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_are_you_sure_you2".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 27,
                      bottom: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomOutlinedButton(
                            text: "lbl_cancel".tr,
                            margin: getMargin(
                              right: 10,
                            ),
                            buttonStyle: CustomButtonStyles.outlinePrimary
                                .copyWith(
                                    fixedSize:
                                        MaterialStateProperty.all<Size>(Size(
                              double.maxFinite,
                              getVerticalSize(
                                46,
                              ),
                            ))),
                            buttonTextStyle:
                                CustomTextStyles.titleMediumPrimary_1,
                          ),
                        ),
                        Expanded(
                          child: CustomElevatedButton(
                            text: "lbl_log_out".tr,
                            margin: getMargin(
                              left: 10,
                            ),
                            buttonStyle: CustomButtonStyles.fillPrimaryTL8
                                .copyWith(
                                    fixedSize:
                                        MaterialStateProperty.all<Size>(Size(
                              double.maxFinite,
                              getVerticalSize(
                                46,
                              ),
                            ))),
                            buttonTextStyle: theme.textTheme.titleMedium!,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
