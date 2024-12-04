import 'package:intl/intl.dart';

import '../../core/utils/tabel_calendar/src/customization/calendar_style.dart';
import '../../core/utils/tabel_calendar/src/customization/days_of_week_style.dart';
import '../../core/utils/tabel_calendar/src/customization/header_style.dart';
import '../../core/utils/tabel_calendar/src/table_calendar.dart';
import 'controller/book_appoiment_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

class BookAppoimentScreen extends GetWidget<BookAppoimentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(26),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 28, bottom: 28),
                    onTap: () {
                      onTapArrowleft13();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_book_appointment".tr),
                styleType: Style.bgFillWhiteA700),
            body: Column(
              children: [
                Expanded(
                  child: ListView(
                      primary: true,
                      shrinkWrap: false,
                      padding: getPadding(top: 16, right: 16, left: 16),
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("msg_select_date_time".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProTextBold20),
                        Container(
                          margin: getMargin(top: 24),
                          padding: getPadding(
                              left: 16, top: 21, right: 16, bottom: 21),
                          decoration: AppDecoration.outlineBlack9000f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Column(
                            children: [
                              TableCalendar(
                                daysOfWeekStyle: DaysOfWeekStyle(
                                    dowTextFormatter: (date, locale) {
                                      return DateFormat.E(locale)
                                          .format(date)
                                          .substring(0, 3)
                                          .toUpperCase();
                                    },
                                    weekendStyle: AppStyle
                                        .txtSFProTextSemibold13
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.38)),
                                    weekdayStyle: AppStyle
                                        .txtSFProTextSemibold13
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.38))),
                                headerStyle: HeaderStyle(
                                  headerMargin: EdgeInsets.only(
                                      bottom: getVerticalSize(11)),
                                  leftChevronIcon: CustomImageView(
                                    svgPath: Constant.imagePath + "left.svg",
                                    height: getVerticalSize(17),
                                    width: getVerticalSize(9),
                                  ),
                                  rightChevronIcon: CustomImageView(
                                    svgPath: Constant.imagePath + "right.svg",
                                    height: getVerticalSize(17),
                                    width: getVerticalSize(9),
                                  ),
                                  titleCentered: false,
                                  leftChevronPadding: EdgeInsets.zero,
                                  rightChevronPadding: EdgeInsets.zero,
                                  formatButtonVisible: false,
                                  titleTextStyle:
                                      AppStyle.txtSFProTextSemibold17.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.38)),
                                ),
                                daysOfWeekHeight: getVerticalSize(25),
                                calendarStyle: CalendarStyle(
                                  outsideDaysVisible: false,
                                  weekendTextStyle: AppStyle
                                      .txtSFProDisplayRegular20
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.38)),
                                  disabledTextStyle: AppStyle
                                      .txtSFProDisplayRegular20
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.38)),
                                  selectedDecoration: BoxDecoration(
                                    color: ColorConstant.pink800,
                                    shape: BoxShape.circle,
                                  ),
                                  defaultTextStyle: AppStyle
                                      .txtSFProDisplayRegular20
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.38)),
                                  holidayTextStyle: AppStyle
                                      .txtSFProDisplayRegular20
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.38)),
                                  selectedTextStyle: AppStyle
                                      .txtSFProDisplaySemibold20
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.38)),
                                  todayTextStyle: AppStyle
                                      .txtSFProDisplaySemibold20
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.38)),
                                  todayDecoration: BoxDecoration(
                                      color: ColorConstant.pink800,
                                      shape: BoxShape.circle),
                                ),
                                weekNumbersVisible: false,
                                firstDay: DateTime.utc(2010, 10, 16),
                                lastDay: DateTime.utc(2030, 3, 14),
                                focusedDay: DateTime.now(),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_time".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextSemibold17),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: getPadding(left: 12, right: 12),
                                      height: getVerticalSize(34),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.gray300,
                                        borderRadius: BorderRadius.circular(
                                            getVerticalSize(8)),
                                      ),
                                      child: Text("lbl_9_41_am".tr,
                                          style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(
                                              17,
                                            ),
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w400,
                                          )),
                                    )
                                  ])
                            ],
                          ),
                        ),
                        Padding(
                            padding: getPadding(top: 30),
                            child: Text("msg_selected_specialist".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFProTextBold20)),
                        Container(
                            margin: getMargin(top: 24),
                            padding: getPadding(all: 16),
                            decoration: AppDecoration.fillGray50.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse22,
                                      height: getSize(58),
                                      width: getSize(58),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(29))),
                                  Padding(
                                      padding: getPadding(left: 16),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_esther_howard".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProTextBold20),
                                            Padding(
                                                padding: getPadding(top: 8),
                                                child: Text("lbl_sr_barber".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtBody))
                                          ]))
                                ])),
                      ]),
                ),
                CustomButton(
                    height: getVerticalSize(53),
                    text: "lbl_continue".tr,
                    margin: getMargin(left: 16, right: 16, top: 40, bottom: 63),
                    onTap: () {
                      onTapContinue();
                    })
              ],
            )));
  }

  onTapContinue() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }

  onTapArrowleft13() {
    Get.back();
  }
}
