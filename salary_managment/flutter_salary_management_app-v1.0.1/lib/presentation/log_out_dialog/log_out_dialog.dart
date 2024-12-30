import '../home_screen_container_screen/controller/home_screen_container_controller.dart';
import '../home_screen_page/home_screen_page.dart';
import 'controller/log_out_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class LogOutDialog extends StatelessWidget {
  LogOutDialog(this.controller, {Key? key}) : super(key: key);

  LogOutController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 376.h,
        height: 155.v,
        padding: EdgeInsets.only(left: 31.h, right: 31.h, bottom: 19.v,top: 24.h),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("msg_are_you_sure_you2".tr,
                  style: theme.textTheme.titleLarge),
              SizedBox(height: 24.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: CustomOutlinedButton(
                        height: 56.v,
                        text: "lbl_cancel".tr,
                        onPressed: () {
                          Get.back();
                        })),
                SizedBox(width: 20.h),
                Expanded(
                    child: CustomElevatedButton(
                        height: 56.v,
                        text: "lbl_log_out".tr,
                        onPressed: () {
                          onTapLogOut();
                          PrefUtils.setLogin(true);
                          HomeScreenContainerController controller = Get.put(HomeScreenContainerController());
                          controller.selectedIndex.value = 0;
                          controller.onChange(HomeScreenPage());
                        }))
              ])
            ]));
  }

  /// Navigates to the logInWithDefualtScreen when the action is triggered.
  onTapLogOut() {
    Get.toNamed(
      AppRoutes.logInWithDefualtScreen,
    );
  }
}
