import 'package:flutter/cupertino.dart';
import 'controller/register_date_of_birth_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:investment_app/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:investment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:investment_app/widgets/custom_button.dart';

class RegisterDateOfBirthScreen
    extends GetWidget<RegisterDateOfBirthController> {
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(56.00),
            leadingWidth: 74,
            leading: AppbarIconbutton(
                svgPath: ImageConstant.imgArrowLeftIcon,
                margin: getMargin(left: 24, top: 3, bottom: 3),
                onTap: onTapArrowleft2),
            actions: [
              Container(
                  height: getSize(50.00),
                  width: getSize(50.00),
                  margin:
                      getMargin(left: 227, top: 3, right: 24, bottom: 3),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: getSize(50.00),
                            width: getSize(50.00),
                            child: CircularProgressIndicator(
                                color: ColorConstant.lightBlue900,
                                backgroundColor: ColorConstant.lightGray,
                                value: 3/14,
                                strokeWidth: getHorizontalSize(2.00)))),
                    AppbarSubtitle2(
                        text: "3/13",
                        margin: getMargin(
                            left: 0, top: 17, right: 0, bottom: 17))
                  ]))
            ]),
        body: SafeArea(
          child: Container(
              width: size.width,
              padding: getPadding(left: 39, top: 48, right: 39, bottom: 48),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: getHorizontalSize(290.00),
                        margin: getMargin(right: 2),
                        child: Text("msg_cool_when_is_your".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterBold32WhiteA700
                                .copyWith(height: getVerticalSize(1.5))),
                    ),
                    SizedBox(
                      height: 304,
                      child: CupertinoDatePicker(

                        dateOrder: DatePickerDateOrder.dmy,
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime(1969, 1, 1),

                        onDateTimeChanged: (DateTime newDateTime) {
                          // Do something
                        },
                      ),
                    ),
            ])),
        ),
        bottomNavigationBar: Padding(
            padding: getPadding(left: 24, right: 24, bottom: 40),
            child:
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomButton( onTap:() => Get.toNamed(AppRoutes.registerWhereYouBornScreen),height: 56, width: 327, text: "lbl_continue".tr)
            ])));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
