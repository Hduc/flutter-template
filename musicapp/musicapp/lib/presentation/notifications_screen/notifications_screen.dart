import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';

import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  NotificationsController controller = Get.put(NotificationsController());

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
            backgroundColor: appTheme.bgColor,
            body: controller.notificationData.isEmpty?
                Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgGroupDeepPurpleA200,
                            height: getVerticalSize(122),
                            width: getHorizontalSize(107)),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Text("msg_no_notifications".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleLarge)),
                        Container(
                            width: getHorizontalSize(300),
                            margin: getMargin(
                                left: 63, top: 16, right: 63, bottom: 5),
                            child: Text("msg_we_did_not_found".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyLarge))
                      ],
                    ),
                    Padding(
                      padding: getPadding(top: 24),
                      child: Container(
                          color: appTheme.bgColor,
                          child:
                          Padding(
                            padding:getPadding(left: 20,right: 20,top: 24,bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppbarImage(
                                    height: getSize(24),
                                    width: getSize(24),
                                    svgPath:PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,

                                    onTap: () {
                                      Get.back();
                                    }),
                                AppbarTitle(text: "lbl_notifications".tr),
                                SizedBox()
                              ],
                            ),
                          )


                      ),
                    ),
                  ],
                )



           :Column(
                      children: [
                        SizedBox(height: getVerticalSize(24),),
                        Container(
                            color: appTheme.bgColor,
                            child:
                            Padding(
                              padding:getPadding(left: 20,right: 20,top: 24,bottom: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppbarImage(
                                      height: getSize(24),
                                      width: getSize(24),
                                      svgPath:PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,

                                      onTap: () {
                                        Get.back();
                                      }),
                                  AppbarTitle(text: "lbl_notifications".tr),
                                  SizedBox()
                                ],
                              ),
                            )


                        ),
                        Expanded(
                          child: ListView(
                            children: [
                                  ListView.separated(
                                  padding: getPadding(left: 20, top: 0, right: 20,bottom: 16),
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  primary: false,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: getVerticalSize(16));
                                  },
                                  itemCount: controller.notificationData.length,
                                  itemBuilder: (context, index) {
                                    NotificationsItemModel model =
                                        controller.notificationData[index];
                                    return NotificationsItemWidget(model);
                                  }),
                                ],
                          ),
                        ),
                      ],
                    )));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
