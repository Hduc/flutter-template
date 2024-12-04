import 'package:dating_app/core/app_export.dart';

import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';


import '../home_page/home_page.dart';
import 'controller/location_access_container_controller.dart';

// ignore_for_file: must_be_immutable
class LocationAccessContainerPage extends StatefulWidget {
  LocationAccessContainerPage({Key? key}) : super(key: key);

  @override
  State<LocationAccessContainerPage> createState() => _LocationAccessContainerPageState();
}

class _LocationAccessContainerPageState extends State<LocationAccessContainerPage> {
  LocationAccessContainerController locationAccessContainerController = Get.put(LocationAccessContainerController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: getPadding(top: getSize(10)),
            child: GetBuilder<LocationAccessContainerController>(
              builder: (controller) {
                return controller.locSelect
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            CustomImageView(
                                svgPath:
                                    ImageConstant.imgGroup34160Gray100154x156,
                                height: getSize(154),
                                width: getSize(156),
                                margin: getMargin(top: getSize(17))),
                            Padding(
                                padding: getPadding(top: getSize(3)),
                                child: Text("msg_hello_nice_to_meet".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleLarge22)),
                            SizedBox(
                              height:getSize(8),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: getSize(50)),
                              child: Text(
                                  "We access your location while you are using this app"
                                      .tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyLarge),
                            ),
                            CustomElevatedButton(
                              onTap: () {
                                // // PrefData.setLoc(false);
                                // controller.locSelect = true;
                                controller.changeLoc();
                                controller.update();
                              },
                                text: "msg_use_current_location".tr,
                                margin: getMargin(
                                    top: getSize(33), right:getSize(40), left: getSize(40)),
                                buttonStyle: CustomButtonStyles.fillPrimary
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(double.maxFinite,
                                                    getSize(54)))),
                                buttonTextStyle:
                                    theme.textTheme.titleMedium!),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtAddmanuallyloca();
                                },
                                child: Padding(
                                    padding: getPadding(top: getSize(16)),
                                    child: Text("msg_add_manually_location".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodyLarge)))
                          ])
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal:getSize(20)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hi, Ronald richards',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: getFontSize(20),
                                          ),
                                        ),
                                        Text(
                                          'New york',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: getFontSize(17),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(
                                        AppRoutes.searchScreen,
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x14000000),
                                              blurRadius:getSize(13),
                                              offset: Offset(0, 2),
                                              spreadRadius: 0,
                                            )
                                          ]),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgSearch,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                        color: appTheme.black900,
                                        margin: getMargin(
                                            top: getSize(12),
                                            bottom: getSize(12),
                                            left: getSize(12),
                                            right: getSize(12),),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:getSize(13),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(
                                        AppRoutes.filterScreen,
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x14000000),
                                              blurRadius: getSize(13),
                                              offset: Offset(0, 2),
                                              spreadRadius: 0,
                                            )
                                          ]),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgSetting,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                        color: appTheme.black900,
                                        margin: getMargin(
                                            top: getSize(12),
                                            bottom: getSize(12),
                                            left: getSize(12),
                                            right: getSize(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: getSize(15),),
                              child: Container(
                                  height: getSize(45),
                                  width: double.infinity,
                                  clipBehavior: Clip.antiAlias,
                                  margin: getMargin(top: getSize(24)),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF2F2F2),
                                      borderRadius:
                                          BorderRadius.circular(50)),
                                  child: TabBar(
                                      controller: controller.tabviewController,
                                      labelColor: Color(0xFFF2F2F2),
                                      isScrollable: false,
                                      labelStyle: TextStyle(
                                        fontSize: getFontSize(16),
                                        fontWeight: FontWeight.w600,
                                      ),
                                      unselectedLabelColor: appTheme.black900,
                                      unselectedLabelStyle: TextStyle(),
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      indicator: BoxDecoration(
                                          color: appTheme.deepPurple300,
                                          borderRadius: BorderRadius.horizontal(
                                              // left: Radius.circular(24.h),
                                              //  right: Radius.circular(24.h)
                                              )),
                                      tabs: [
                                        Tab(
                                            child: Text("lbl_for_you".tr,
                                                overflow:
                                                    TextOverflow.ellipsis)),
                                        Tab(
                                            child: Text("lbl_near_by_you".tr,
                                                overflow:
                                                    TextOverflow.ellipsis))
                                      ])),
                            ),
                            SizedBox(
                              height: getSize(16),
                            ),
                            Expanded(
                              child: TabBarView(
                                  controller: controller.tabviewController,
                                  children: [HomePage(), HomePage()]),
                            ),
                            SizedBox(
                              height: getSize(16),
                            ),
                          ]);
              },
              init: LocationAccessContainerController(),
            ),
          ),
        ));
  }

  onTapTxtAddmanuallyloca() {
    Get.toNamed(
      AppRoutes.addManuallyAddressScreen,
    );
  }
}
