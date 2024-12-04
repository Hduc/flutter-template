import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/data/pref_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'controller/match_success_controller.dart';

class MatchSuccessScreen extends GetWidget<MatchSuccessController> {
  const MatchSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarIconBrightness:Brightness.dark  ));
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:  EdgeInsets.only(top: getSize(50),right: getSize(16),left: getSize(16)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                    svgPath: ImageConstant.imgArrowleftBlack90024x24,
                    color: Colors.black,
                    height: getSize(24),
                    width: getSize(24),
                    alignment: Alignment.centerLeft,
                    onTap: () {
                      onTapImgArrowleft();
                    }),
                SizedBox(
                  height: getSize(30),
                ),
                Expanded(child: Image.asset(ImageConstant.imgMatchPerson,)),
                Padding(
                    padding: getPadding(top: getSize(40)),
                    child: Text("lbl_it_s_a_match".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.displaySmall)),
                Padding(
                    padding: getPadding(top: getSize(16)),
                    child: Text("msg_start_a_conversation".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge)),

                Padding(
                  padding: getPadding(top: getSize(78)),
                  child: GestureDetector(
                    onTap: () {
                      PrefData.currentIndex=2;
                            controller.update();
                            Get.toNamed(AppRoutes.locationAccessContainer1Screen);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFAA6BE9),
                        borderRadius: BorderRadius.circular(getSize(12)
                        ),
                      ),
                      child: Padding(
                        padding: getPadding(top: getSize(13),bottom: getSize(13)),
                        child: Text('Say hello',style: TextStyle(
                          color: Colors.white,
                          fontSize: getFontSize(18),
                          fontWeight: FontWeight.w700,

                        ),),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    PrefData.currentIndex=0;
                    controller.update();
                    Get.toNamed(
                      AppRoutes.locationAccessContainer1Screen,
                    );
                  },
                  child: Padding(
                    padding: getPadding(top: getSize(16)),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFFF7F0FD),
                        borderRadius: BorderRadius.circular(getSize(12)
                        ),
                      ),
                      child: Padding(
                        padding: getPadding(top: getSize(13),bottom: getSize(13)),
                        child: Text('Go to home',style: TextStyle(
                          color: Color(0xFFAA6BE9),
                          fontSize: getFontSize(18),
                          fontWeight: FontWeight.w700,

                        ),),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: getSize(40),

                )
              ]),
        ));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
