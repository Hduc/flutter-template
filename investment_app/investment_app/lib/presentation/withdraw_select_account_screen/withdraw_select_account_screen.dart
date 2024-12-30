import '../../widgets/custom_search_view.dart';
import 'controller/withdraw_select_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class WithdrawSelectAccountScreen
    extends GetWidget<WithdrawSelectAccountController> {
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
                height: size.height,
                width: size.width,
                child: Stack(alignment: Alignment.topRight, children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: getVerticalSize(251.00),
                          width: getHorizontalSize(width),
                          padding: getPadding(
                              left: 24, top: 16, right: 24, bottom: 16),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup14),
                                  fit: BoxFit.fill)),
                          child: Stack(children: [
                            CustomIconButton(
                                height: 50,
                                width: 50,
                                variant: IconButtonVariant.FillWhiteA70014,
                                alignment: Alignment.topLeft,
                                onTap: () {
                                  onTapBtnArrowleft();
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowleftWhiteA70050x50))
                          ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1933,
                      height: getVerticalSize(175.00),
                      width: getHorizontalSize(253.00),
                      alignment: Alignment.topRight),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.whiteA700,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.customBorderTL32),
                          child: Container(
                              height: getVerticalSize(682.00),
                              width: size.width,
                              padding: getPadding(
                                  left: 16, top: 10, right: 16, bottom: 10),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.customBorderTL32),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Container(
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding:
                                              getPadding(left: 8, right: 8),
                                              child: ListView(
                                                // mainAxisSize: MainAxisSize.min,
                                                // crossAxisAlignment:
                                                //     CrossAxisAlignment.start,
                                                // mainAxisAlignment:
                                                //     MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(height: getVerticalSize(24),),
                                                    CustomSearchView(
                                                        width: 327,
                                                        focusNode: FocusNode(),
                                                        controller: controller
                                                            .searchboxController,
                                                        hintText:
                                                        "lbl_search_bank".tr,
                                                        prefix: Container(
                                                            margin: getMargin(
                                                                left: 16,
                                                                top: 14,
                                                                right: 16,
                                                                bottom: 14),
                                                            child: CustomImageView(
                                                                svgPath: ImageConstant
                                                                    .imgSearchLightBlue900)),
                                                        prefixConstraints:
                                                        BoxConstraints(
                                                            maxHeight:
                                                            getVerticalSize(
                                                                52.00))),
                                                    SizedBox(height: getVerticalSize(24),),
                                                    GestureDetector(
                                                      onTap: (){},
                                                      child: Container(
                                                          padding:
                                                          getPadding(all: 16),
                                                          decoration: AppDecoration
                                                              .outlineGray2001
                                                              .copyWith(
                                                              borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder24),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text(
                                                                "7837********"
                                                                    .tr,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: AppStyle
                                                                    .txtInterBold16Width500
                                                                    .copyWith(
                                                                    height:
                                                                    getVerticalSize(1.24))),
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgArrowright,
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00),
                                                                margin:
                                                                getMargin(
                                                                    top: 10,
                                                                    right:
                                                                    4,
                                                                    bottom:
                                                                    10))
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: getVerticalSize(8),),
                                                    GestureDetector(
                                                      onTap: (){},
                                                      child: Container(
                                                        padding:
                                                        getPadding(all: 16),
                                                        decoration: AppDecoration
                                                            .outlineGray2001
                                                            .copyWith(
                                                            borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder24),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text(
                                                                "8963********"
                                                                    .tr,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: AppStyle
                                                                    .txtInterBold16Width500
                                                                    .copyWith(
                                                                    height:
                                                                    getVerticalSize(1.24))),
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgArrowright,
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00),
                                                                margin:
                                                                getMargin(
                                                                    top: 10,
                                                                    right:
                                                                    4,
                                                                    bottom:
                                                                    10))
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: getVerticalSize(8),),
                                                    GestureDetector(
                                                      onTap: (){},
                                                      child: Container(
                                                        padding:
                                                        getPadding(all: 16),
                                                        decoration: AppDecoration
                                                            .outlineGray2001
                                                            .copyWith(
                                                            borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder24),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text(
                                                                "3458********"
                                                                    .tr,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: AppStyle
                                                                    .txtInterBold16Width500
                                                                    .copyWith(
                                                                    height:
                                                                    getVerticalSize(1.24))),
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgArrowright,
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00),
                                                                margin:
                                                                getMargin(
                                                                    top: 10,
                                                                    right:
                                                                    4,
                                                                    bottom:
                                                                    10))
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: getVerticalSize(8),),
                                                    GestureDetector(
                                                      onTap: (){},
                                                      child: Container(
                                                        padding:
                                                        getPadding(all: 16),
                                                        decoration: AppDecoration
                                                            .outlineGray2001
                                                            .copyWith(
                                                            borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder24),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text(
                                                                "9874********"
                                                                    .tr,
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: AppStyle
                                                                    .txtInterBold16Width500
                                                                    .copyWith(
                                                                    height:
                                                                    getVerticalSize(1.24))),
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgArrowright,
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00),
                                                                margin:
                                                                getMargin(
                                                                    top: 10,
                                                                    right:
                                                                    4,
                                                                    bottom:
                                                                    10))
                                                          ],
                                                        ),
                                                      ),
                                                    ),


                                                  ]))),
                                    ),

                                    GestureDetector(
                                      onTap: (){
                                        Get.toNamed(AppRoutes.withdrawAddBankAccountScreen);
                                      },
                                      child: Padding(
                                        padding: getPadding(bottom: 16),
                                        child: Container(
                                          height: getVerticalSize(64),
                                          width: getHorizontalSize(64),
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    offset: Offset(0, 16),
                                                    blurRadius: 27,
                                                    spreadRadius: -8,
                                                    color: ColorConstant.black900.withOpacity(0.52)
                                                )
                                              ],
                                              borderRadius: BorderRadius.circular(8),
                                              color: ColorConstant.blue700
                                          ),
                                          child: Padding(
                                            padding: getPadding(all: 20),
                                            child: CustomImageView(
                                              svgPath: ImageConstant.imgPlus,
                                              fit: BoxFit.fill,),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ])))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(top: 28),
                          child: Text("lbl_select_account".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold20
                                  .copyWith(height: getVerticalSize(1.12)))))
                ])),
          )),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
