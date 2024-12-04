
import '../order_successfull_screen/order_successfull_screen.dart';
import 'controller/payment_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

class PaymentDetailsScreen extends GetWidget<PaymentDetailsController> {
  CouponCodeController couponCodeController = Get.put(CouponCodeController());
  @override
  Widget build(BuildContext context) {
    return Container();
    // return GetBuilder<CouponCodeController>(
    //   init: CouponCodeController(CouponCodeModel().obs),
    //   builder:(Coupocontroller) =>  WillPopScope(
    //     onWillPop: ()async{
    //
    //       Get.back();
    //       return false;
    //     },
    //     child: Scaffold(
    //         resizeToAvoidBottomInset: false,
    //         backgroundColor: ColorConstant.whiteA700,
    //         appBar: CustomAppBar(
    //             height: getVerticalSize(66),
    //             leadingWidth: 44,
    //             leading: AppbarImage(
    //                 height: getSize(24),
    //                 width: getSize(24),
    //                 svgPath: ImageConstant.imgArrowleftBlack900,
    //                 margin: getMargin(left: 20, top: 17, bottom: 25),
    //                 onTap: () {
    //                   onTapArrowleft14();
    //                 }),
    //             centerTitle: true,
    //             title: AppbarTitle(text: "lbl_payment_details".tr),
    //             styleType: Style.bgFillWhiteA700),
    //         body: SafeArea(
    //           child: Container(
    //               width: double.maxFinite,
    //               padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
    //               child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   mainAxisAlignment: MainAxisAlignment.start,
    //                   children: [
    //                     Container(
    //                         padding: getPadding(all: 4),
    //                         decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(getHorizontalSize(20)),
    //                             color: ColorConstant.whiteA700,
    //                             boxShadow: [
    //                               BoxShadow(offset: Offset(0, 6),
    //                                   blurRadius: 30,
    //                                   color: ColorConstant.black900.withOpacity(0.07))
    //                             ]
    //                         ),
    //                         child: Row(children: [
    //                           CustomImageView(
    //                               imagePath: ImageConstant.imgRectangle29310,
    //                               height: getSize(70),
    //                               width: getSize(70),
    //                               radius: BorderRadius.circular(
    //                                   getHorizontalSize(20))),
    //                           Padding(
    //                               padding:
    //                                   getPadding(left: 16, top: 13, bottom: 10),
    //                               child: Column(
    //                                   mainAxisAlignment: MainAxisAlignment.start,
    //                                   children: [
    //                                     Text("lbl_mini_militia".tr,
    //                                         overflow: TextOverflow.ellipsis,
    //                                         textAlign: TextAlign.left,
    //                                         style: AppStyle.txtHeadline),
    //                                     Padding(
    //                                         padding: getPadding(top: 6),
    //                                         child: Text("lbl_single_player2".tr,
    //                                             overflow: TextOverflow.ellipsis,
    //                                             textAlign: TextAlign.left,
    //                                             style: AppStyle
    //                                                 .txtAeonikRegular15Gray600))
    //                                   ]))
    //                         ])),
    //                     Container(
    //                         width: double.maxFinite,
    //                         child: Container(
    //                             margin: getMargin(top: 24),
    //                             padding: getPadding(
    //                                 left: 24, top: 13, right: 24, bottom: 13),
    //                             decoration: AppDecoration.fillGray50.copyWith(
    //                                 borderRadius:
    //                                     BorderRadiusStyle.roundedBorder20),
    //                             child: Column(
    //                                 mainAxisSize: MainAxisSize.min,
    //                                 mainAxisAlignment: MainAxisAlignment.center,
    //                                 children: [
    //                                   Padding(
    //                                       padding: getPadding(top: 3),
    //                                       child: Row(
    //                                           mainAxisAlignment:
    //                                               MainAxisAlignment.spaceBetween,
    //                                           children: [
    //                                             Padding(
    //                                                 padding:
    //                                                     getPadding(bottom: 1),
    //                                                 child: Text("lbl_date".tr,
    //                                                     overflow:
    //                                                         TextOverflow.ellipsis,
    //                                                     textAlign: TextAlign.left,
    //                                                     style: AppStyle
    //                                                         .txtBodyGray600)),
    //                                             Padding(
    //                                                 padding: getPadding(top: 1),
    //                                                 child: Text(
    //                                                     "lbl_july_16_2022".tr,
    //                                                     overflow:
    //                                                         TextOverflow.ellipsis,
    //                                                     textAlign: TextAlign.left,
    //                                                     style:
    //                                                         AppStyle.txtHeadline))
    //                                           ])),
    //                                   Padding(
    //                                       padding: getPadding(top: 23),
    //                                       child: Row(
    //                                           mainAxisAlignment:
    //                                               MainAxisAlignment.spaceBetween,
    //                                           children: [
    //                                             Padding(
    //                                                 padding: getPadding(top: 1),
    //                                                 child: Text("lbl_to_pay".tr,
    //                                                     overflow:
    //                                                         TextOverflow.ellipsis,
    //                                                     textAlign: TextAlign.left,
    //                                                     style: AppStyle
    //                                                         .txtBodyGray600)),
    //                                             Padding(
    //                                                 padding:
    //                                                     getPadding(bottom: 1),
    //                                                 child: Text("lbl_69_00".tr,
    //                                                     overflow:
    //                                                         TextOverflow.ellipsis,
    //                                                     textAlign: TextAlign.left,
    //                                                     style:
    //                                                         AppStyle.txtHeadline))
    //                                           ]))
    //                                 ]))),
    //
    //                     Padding(
    //                         padding: getPadding(top: 25),
    //                         child: Text("lbl_promo_code".tr,
    //                             overflow: TextOverflow.ellipsis,
    //                             textAlign: TextAlign.left,
    //                             style: AppStyle.txtHeadline)),
    //                     SizedBox(height: getVerticalSize(16),),
    //                     CustomTextFormField(
    //                       fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
    //                         width: double.infinity,
    //                         controller: controller.group502Controller,
    //                         hintText: "lbl_enter_code".tr,
    //                         padding: TextFormFieldPadding.PaddingT16,
    //                         variant: TextFormFieldVariant.Blue,
    //                         suffixConstraints: BoxConstraints(
    //                           maxHeight: getSize(56),
    //                           minHeight: getSize(56),
    //                           maxWidth: getSize(131)
    //                         ),
    //                         suffix:   CustomButton(
    //                           onTap: (){
    //                             Coupocontroller.isCouponScreenNavigateOfPayDetail(true);
    //                             Get.to(CouponCodePage());
    //                           },
    //                             height: getSize(47),
    //                             width: getSize(131),
    //                             text: "lbl_apply".tr,
    //                             margin: getMargin(bottom: 9,top: 8,right: 8),
    //                             padding: ButtonPadding.PaddingAll6,
    //                             fontStyle: ButtonFontStyle.AeonikBold14),
    //                         textInputAction: TextInputAction.done,)
    //                   ])),
    //         ),
    //         bottomNavigationBar: Container(
    //             margin: getMargin(left: 20, right: 20, bottom: 40),
    //             decoration: AppDecoration.white,
    //             child: Column(
    //                 mainAxisSize: MainAxisSize.min,
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 children: [
    //                   CustomButton(
    //                       height: getVerticalSize(56),
    //                       text: "lbl_pay_now_69_00".tr,
    //                       onTap: () {
    //                         onTapPaynow69zero(context);
    //                       })
    //                 ]))),
    //   ),
    // );
  }

  onTapPaynow69zero(context) {


    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  onTapArrowleft14() {
    Get.back();
  }
}

class CouponCodeModel {
}

class CouponCodeController {
}
