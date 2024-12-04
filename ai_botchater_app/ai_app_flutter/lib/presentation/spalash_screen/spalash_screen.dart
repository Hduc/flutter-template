import 'package:flutter_svg/flutter_svg.dart';

import 'controller/spalash_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

class SpalashScreen extends GetWidget<SpalashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.black900,
                    image: DecorationImage(
                        image: AssetImage(Constant.imagePath+"image_main.png"),
                        fit: BoxFit.fill)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // SvgPicture.asset(ImageConstant.imgFrame,
                          //     height: getVerticalSize(127),
                          //     width: getVerticalSize(91)),
                          CustomImageView(
                            svgPath: ImageConstant.imgFrame,
                            height: getVerticalSize(127),
                            width: getVerticalSize(91),
                          ),
                          Container(
                            width: getVerticalSize(184),
                            height: getVerticalSize(184),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(getVerticalSize(234)),
                                color: Colors.white70.withOpacity(0.04)),
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: getHorizontalSize(219),
                              child: Text("msg_best_personal_ai".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtAirbnbCerealWBd34)))
                    ]))));
  }
}
