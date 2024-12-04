import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class AboutDinvestScreen extends StatefulWidget {
  const AboutDinvestScreen({Key? key}) : super(key: key);

  @override
  State<AboutDinvestScreen> createState() => _AboutDinvestScreenState();
}

class _AboutDinvestScreenState extends State<AboutDinvestScreen> {
  @override
  Widget build(BuildContext context) {

    return
      WillPopScope(
        onWillPop: () async{
          Get.back();
          return false;
        },
        child: Scaffold(
            backgroundColor: ColorConstant.lightBlue900,

            body: SafeArea(
              child: Container(
                width: size.width,
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup14,
                      height: getVerticalSize(
                        251.00,
                      ),
                      width: getHorizontalSize(
                          width
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topLeft,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row(
                            children: [
                              CustomIconButton(
                                  height: 50,
                                  width: 50,
                                  variant: IconButtonVariant
                                      .FillWhiteA70014,

                                  onTap: () {
                                    Get.back();
                                  },
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgArrowleftWhiteA70050x50)),
                              SizedBox(width: getHorizontalSize(68),),
                              Text("About Dinvest",
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyle.txtInterSemiBold20
                                      .copyWith(
                                      height: getVerticalSize(1.12))),
                            ],
                          ),






                        ],
                      ).paddingSymmetric(horizontal: 24),
                    ),
                    Container(
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL32,
                        ),
                        child: Padding(
                          padding: getPadding(top: 24),
                          child:

                          ListView(
                            children: [
                              Container(
                                color: ColorConstant.whiteA700,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    question('1.Types of data we collect'),
                                    SizedBox(height: getVerticalSize(16),),
                                    answer(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),

                                  ],
                                ).paddingSymmetric(horizontal: getHorizontalSize(24),vertical: 20),
                              ).paddingSymmetric(vertical: getVerticalSize(10)),
                              Container(
                                color: ColorConstant.whiteA700,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    question('2. Use of your personal Data'),
                                    SizedBox(height: getVerticalSize(16),),
                                    answer(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                                  ],
                                ).paddingSymmetric(horizontal:getHorizontalSize(24),vertical: 20),
                              ).paddingSymmetric(vertical: getVerticalSize(10)),
                              Container(
                                color: ColorConstant.whiteA700,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    question('3. Disclosure of your personal Data'),
                                    SizedBox(height: getVerticalSize(16),),
                                    answer(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                                  ],
                                ).paddingSymmetric(horizontal:getHorizontalSize(24),vertical: 20),
                              ).paddingSymmetric(vertical: getVerticalSize(10)),
                            ],
                          ),)
                    ).paddingOnly(top: getVerticalSize(118))],
                ),
              ),
            )),
      );









  }

  question(String s) {
    return Text(
      s,
      style:
      AppStyle.txtInterSemiBold20Gray800.copyWith(
        height: getVerticalSize(
          1.12,
        ),
      ),
    );
  }

  answer(String s) {
    return Text(
      s,
      style: TextStyle(
          fontSize: 14,
          fontFamily: 'Gilroy',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          color: Color(0XFF6E758A)),
    );
  }
}
