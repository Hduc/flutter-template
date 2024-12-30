import 'controller/delete_address_controller.dart';import 'package:dating_app/core/app_export.dart';import 'package:dating_app/widgets/custom_elevated_button.dart';import 'package:dating_app/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';class DeleteAddressScreen extends GetWidget<DeleteAddressController> {const DeleteAddressScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, backgroundColor: appTheme.whiteA700, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(color: appTheme.whiteA700, image: DecorationImage(image: AssetImage(ImageConstant.imgAddressedit), fit: BoxFit.cover)), child: Container(width: double.maxFinite, padding: getPadding(left: 27, right: 27), child: Container(margin: getMargin(bottom: 5), padding: getPadding(left: 20, top: 27, right: 20, bottom: 27), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(top: 7), child: Text("msg_are_you_sure_you".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumSFProTextBlack900SemiBold)), Padding(padding: getPadding(left: 9, top: 31), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(text: "lbl_no".tr, margin: getMargin(right: 10), buttonStyle: CustomButtonStyles.outlinePrimary.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(46)))), buttonTextStyle: CustomTextStyles.titleMediumPrimary_1, onTap: () {onTapNo();})), Expanded(child: CustomElevatedButton(text: "lbl_yes".tr, margin: getMargin(left: 10), buttonStyle: CustomButtonStyles.fillPrimary.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(46)))), buttonTextStyle: theme.textTheme.titleMedium!, onTap: () {onTapYes();}))]))])))))); } 
/// Navigates to the myAddressScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the myAddressScreen.
onTapNo() { Get.toNamed(AppRoutes.myAddressScreen, ); } 
/// Navigates to the myAddressScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the myAddressScreen.
onTapYes() { Get.toNamed(AppRoutes.myAddressScreen, ); } 
 }
