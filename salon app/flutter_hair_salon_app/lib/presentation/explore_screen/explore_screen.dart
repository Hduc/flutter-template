import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(396),
        padding: getPadding(top: 30, bottom: 30),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Container(
            width: double.maxFinite,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                          padding: getPadding(top: 206),
                          child: Container(
                              margin: getMargin(
                                  left: 16, right: 16, bottom: 253),
                              padding: getPadding(
                                  left: 61,
                                  top: 30,
                                  right: 61,
                                  bottom: 30),
                              decoration: AppDecoration.white.copyWith(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Card(
                                            clipBehavior:
                                            Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color:
                                            ColorConstant.green600,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .circleBorder54),
                                            child: Container(
                                                height: getSize(108),
                                                width: getSize(108),
                                                padding: getPadding(
                                                    left: 32,
                                                    top: 26,
                                                    right: 32,
                                                    bottom: 26),
                                                decoration: AppDecoration
                                                    .fillGreen600
                                                    .copyWith(
                                                    borderRadius:
                                                    BorderRadiusStyle
                                                        .circleBorder54),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      svgPath:
                                                      ImageConstant
                                                          .imgVector,
                                                      height:
                                                      getVerticalSize(
                                                          55),
                                                      width:
                                                      getHorizontalSize(
                                                          44),
                                                      alignment:
                                                      Alignment
                                                          .center)
                                                ])))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding:
                                            getPadding(top: 23),
                                            child: Text(
                                                "lbl_enable_location"
                                                    .tr,
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                textAlign:
                                                TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProTextBold22))),
                                    Container(
                                        width: getHorizontalSize(274),
                                        margin: getMargin(top: 22),
                                        child: Text(
                                            "msg_we_need_location".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtBody)),
                                    CustomButton(
                                        height: getVerticalSize(57),
                                        text: "lbl_enable_location".tr,
                                        margin: getMargin(
                                            left: 6,
                                            top: 36,
                                            right: 26),
                                        onTap: () {
                                          onTapEnablelocation();
                                        }),
                                    CustomButton(
                                        height: getVerticalSize(57),
                                        text: "lbl_cancel".tr,
                                        margin: getMargin(
                                            left: 6,
                                            top: 16,
                                            right: 26),
                                        variant:
                                        ButtonVariant.FillPink50,
                                        fontStyle: ButtonFontStyle
                                            .SFProTextBold18Pink800,
                                        onTap: () {
                                          onTapCancel();
                                        })
                                  ]))))
                ])));
  }

  onTapEnablelocation() {
    Get.toNamed(
      AppRoutes.exploreOneScreen,
    );
  }

  onTapCancel() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }
}
