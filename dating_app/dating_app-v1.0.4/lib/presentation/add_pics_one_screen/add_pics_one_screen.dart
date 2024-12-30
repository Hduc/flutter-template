import '../add_pics_one_screen/widgets/add_pics_one_item_widget.dart';import 'controller/add_pics_one_controller.dart';import 'models/add_pics_one_item_model.dart';import 'package:dating_app/core/app_export.dart';import 'package:dating_app/widgets/app_bar/appbar_image.dart';import 'package:dating_app/widgets/app_bar/appbar_title.dart';import 'package:dating_app/widgets/app_bar/custom_app_bar.dart';import 'package:dating_app/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class AddPicsOneScreen extends GetWidget<AddPicsOneController> {const AddPicsOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, appBar: CustomAppBar(height: getVerticalSize(79), leadingWidth: 42, leading: AppbarImage(height: getSize(24), width: getSize(24), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 18, top: 29, bottom: 26), onTap: () {onTapArrowleft9();}), centerTitle: true, title: AppbarTitle(text: "lbl_step_6_7".tr), styleType: Style.bgOutline), body: Container(width: double.maxFinite, padding: getPadding(left: 16, top: 29, right: 16, bottom: 29), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_add_your_recent".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.headlineSmall), Expanded(child: Padding(padding: getPadding(top: 16), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(142), crossAxisCount: 3, mainAxisSpacing: getHorizontalSize(15), crossAxisSpacing: getHorizontalSize(15)), physics: BouncingScrollPhysics(), itemCount: controller.addPicsOneModelObj.value.addPicsOneItemList.value.length, itemBuilder: (context, index) {AddPicsOneItemModel model = controller.addPicsOneModelObj.value.addPicsOneItemList.value[index]; return AddPicsOneItemWidget(model);}))))])), bottomNavigationBar: CustomElevatedButton(text: "lbl_next".tr, margin: getMargin(left: 16, right: 16, bottom: 40), buttonStyle: CustomButtonStyles.fillPrimary.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, getVerticalSize(54)))), buttonTextStyle: theme.textTheme.titleMedium!, onTap: () {onTapNext();}))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleft9() { Get.back(); } 
/// Navigates to the descriptionScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the descriptionScreen.
onTapNext() { Get.toNamed(AppRoutes.descriptionScreen, ); } 
 }
