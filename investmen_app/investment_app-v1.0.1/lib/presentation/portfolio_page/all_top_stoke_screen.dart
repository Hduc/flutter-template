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

class AllTopStockScreen extends StatefulWidget {
  const AllTopStockScreen({Key? key}) : super(key: key);

  @override
  State<AllTopStockScreen> createState() => _AllTopStockScreenState();
}

class _AllTopStockScreenState extends State<AllTopStockScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
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
                            Text("Personal Info",
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

                        Column(
                          children: [
                            Expanded(
                              child: Container(
                                child: ListView(
                                  physics:BouncingScrollPhysics(),
                                  children: [


                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),)
                  ).paddingOnly(top: getVerticalSize(142))],
              ),
            ),
          )),
    );
  }
}
