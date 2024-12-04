
import '../../core/utils/buttons_tabbar.dart';

import '../my_booking_cancelled_page/my_booking_cancelled_page.dart';
import '../my_booking_complete_page/my_booking_complete_page.dart';
import '../my_booking_upcoming_page/my_booking_upcoming_page.dart';
import 'controller/my_booking_cancelled_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MyBookingCancelledTabContainerPage extends StatefulWidget {
  @override
  State<MyBookingCancelledTabContainerPage> createState() => _MyBookingCancelledTabContainerPageState();
}

class _MyBookingCancelledTabContainerPageState extends State<MyBookingCancelledTabContainerPage> with SingleTickerProviderStateMixin{
  MyBookingCancelledTabContainerController controller =
      Get.put(MyBookingCancelledTabContainerController());

  TabController? tabviewController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabviewController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  padding: getPadding(top: 24, bottom: 24),
                  decoration: AppDecoration.white,
                  child: Text("lbl_my_booking".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold28)),
              CustomTextFormField(
                  controller: controller.searchController,
                  hintText: "lbl_search_here".tr,
                  margin: getMargin(left: 16, top: 12, right: 16),
                  padding: TextFormFieldPadding.PaddingT13,
                  textInputAction: TextInputAction.done,
                  onTap: () {
                    Get.toNamed(AppRoutes.searchScreen);
                  },
                  prefix: Container(
                      margin:
                          getMargin(left: 20, top: 11, right: 13, bottom: 11),
                      child:
                          CustomImageView(svgPath: ImageConstant.imgContrast)),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(46))),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      Container(
                        height: getVerticalSize(34),
                        margin: getMargin(top: 24, left: 16, right: 16),
                        child: ButtonsTabBar(
                          space: 24,
                          // count: 3,
                          // space: 24,
                          height: getVerticalSize(34),
                          labelStyle: TextStyle(
                              fontSize: getFontSize(13),
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              color: ColorConstant.whiteA700),
                          backgroundColor: ColorConstant.pink800,
                          unselectedBackgroundColor: ColorConstant.whiteA700,
                          unselectedLabelStyle: TextStyle(
                              color: ColorConstant.pink800,
                              fontSize: getFontSize(13),
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400),
                          // borderColor: Colors.pink,
                          unselectedBorderColor: ColorConstant.pink800,

                          tabs: [
                            Tab(
                              text: "lbl_upcoming".tr,
                            ),
                            Tab(
                              text: "lbl_completed".tr,
                            ),
                            Tab(
                              text: "lbl_cancelled".tr,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                            children: [
                              MyBookingUpcomingPage(),
                              MyBookingCompletePage(),
                              MyBookingCancelledPage()
                            ]),
                      )
                    ],
                  ),
                ),
              ),

            ])));
  }
}
