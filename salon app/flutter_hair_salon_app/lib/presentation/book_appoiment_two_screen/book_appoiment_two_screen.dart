import 'package:intl/intl.dart';

import '../../core/utils/tabel_calendar/src/customization/calendar_style.dart';
import '../../core/utils/tabel_calendar/src/customization/days_of_week_style.dart';
import '../../core/utils/tabel_calendar/src/customization/header_style.dart';
import '../../core/utils/tabel_calendar/src/table_calendar.dart';
import '../service_detail_three_screen/controller/service_detail_three_controller.dart';
import '../service_detail_three_screen/models/service_model.dart';
import 'controller/book_appoiment_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

class BookAppoimentTwoScreen extends GetWidget<BookAppoimentTwoController> {
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
                      onTapArrowleft26();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_book_appointment".tr),
                styleType: Style.bgFillWhiteA700),
            body: ListView(
                physics: BouncingScrollPhysics(),
                padding: getPadding(top: 6, right: 16, left: 16),
                children: [
                  Text("msg_select_date_time".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold20),
                  Container(
                    margin: getMargin(top: 24),
                    padding:
                        getPadding(left: 16, top: 21, right: 16, bottom: 21),
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
                              weekendStyle: AppStyle.txtSFProTextSemibold13
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.38)),
                              weekdayStyle: AppStyle.txtSFProTextSemibold13
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.38))),
                          headerStyle: HeaderStyle(
                            headerMargin:
                                EdgeInsets.only(bottom: getVerticalSize(11)),
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
                            titleTextStyle: AppStyle.txtSFProTextSemibold17
                                .copyWith(
                                    letterSpacing: getHorizontalSize(0.38)),
                          ),
                          daysOfWeekHeight: getVerticalSize(25),
                          calendarStyle: CalendarStyle(
                            outsideDaysVisible: false,
                            weekendTextStyle: AppStyle.txtSFProDisplayRegular20
                                .copyWith(
                                    letterSpacing: getHorizontalSize(0.38)),
                            disabledTextStyle: AppStyle.txtSFProDisplayRegular20
                                .copyWith(
                                    letterSpacing: getHorizontalSize(0.38)),
                            selectedDecoration: BoxDecoration(
                              color: ColorConstant.pink800,
                              shape: BoxShape.circle,
                            ),
                            defaultTextStyle: AppStyle.txtSFProDisplayRegular20
                                .copyWith(
                                    letterSpacing: getHorizontalSize(0.38)),
                            holidayTextStyle: AppStyle.txtSFProDisplayRegular20
                                .copyWith(
                                    letterSpacing: getHorizontalSize(0.38)),
                            selectedTextStyle:
                                AppStyle.txtSFProDisplaySemibold20.copyWith(
                                    letterSpacing: getHorizontalSize(0.38)),
                            todayTextStyle: AppStyle.txtSFProDisplaySemibold20
                                .copyWith(
                                    letterSpacing: getHorizontalSize(0.38)),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  borderRadius:
                                      BorderRadius.circular(getVerticalSize(8)),
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
                      child: Text("msg_selected_services".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProTextBold20)),
                  GetBuilder<ServiceDetailThreeController>(
                    init: ServiceDetailThreeController(),
                    builder: (controller) => ListView.separated(
                        padding: getPadding(top: 20),
                        primary: false,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          ServiceModel serviceModel =
                          controller.serviceList[index];
                          return Container(
                            padding: getPadding(all: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  onTap: () {
                                    if (serviceModel.select) {
                                      controller.serviceList[index].select =
                                      false;
                                    } else {
                                      controller.serviceList[index].select = true;
                                    }
                                    controller.update();
                                  },
                                  svgPath: serviceModel.select
                                      ? Constant.imagePath + "check_button.svg"
                                      : Constant.imagePath + "uncheck.svg",
                                  height: getVerticalSize(24),
                                  width: getVerticalSize(24),
                                ),
                                SizedBox(
                                  width: getVerticalSize(8),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(serviceModel.name,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtHeadline),
                                    SizedBox(
                                      height: getVerticalSize(6),
                                    ),
                                    Text(serviceModel.time,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtFootnoteBlack900),
                                  ],
                                ),
                                Spacer(),
                                Text(serviceModel.price,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtCallout
                                        .copyWith(color: ColorConstant.pink800)),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(24),
                          );
                        },
                        itemCount: 2),
                  )
                ]),
            bottomNavigationBar: CustomButton(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.paymentMethodsScreen,
                  );
                },
                height: getVerticalSize(53),
                text: "lbl_continue".tr,
                margin: getMargin(left: 16, right: 16, bottom: 28))));
  }

  onTapArrowleft26() {
    Get.back();
  }
}
