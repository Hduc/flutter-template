import '../your_card_screen/controller/your_card_controller.dart';
import 'controller/add_new_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/core/utils/validation_functions.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';
import 'package:game_store_app/widgets/custom_drop_down.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddNewCardScreen extends GetWidget<AddNewCardController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(66),
              leadingWidth: 44,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleftBlack900,
                  margin: getMargin(left: 20, top: 17, bottom: 25),
                  onTap: () {
                    onTapArrowleft16();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_add_new_card".tr),
              styleType: Style.bgFillWhiteA700),
          body: Form(
              key: _formKey,
              child: SafeArea(
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 24, bottom: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomDropDown(
                              focusNode: FocusNode(),
                              autofocus: true,
                              icon: Container(
                                  margin: getMargin(left: 30, right: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              hintText: "msg_select_card_type".tr,
                              margin: getMargin(left: 20, right: 20),
                              items: controller.addNewCardModelObj.value
                                  .dropdownItemList.value,
                              onChanged: (value) {
                                controller.onSelected(value);
                              }),
                          CustomTextFormField(
                              fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                              controller: controller.cardnumberController,
                              hintText: "lbl_card_number".tr,
                              margin: getMargin(left: 20, top: 16, right: 20),
                              padding: TextFormFieldPadding.PaddingT19_2,
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                             
                              controller: controller.nameController,
                              hintText: "msg_card_holder_name".tr,
                              margin: getMargin(left: 20, top: 16, right: 20),
                              padding: TextFormFieldPadding.PaddingT19_2,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                         Padding(
                           padding:getPadding(left: 20,right: 20,top: 16),
                           child: Row(
                            children: [
                             Expanded(
                               child: Container(
                                   padding: getPadding(all: 16),
                                   decoration: AppDecoration.fillGray50
                                       .copyWith(
                                       borderRadius:
                                       BorderRadiusStyle
                                           .roundedBorder20),
                                   child: Column(
                                       mainAxisSize: MainAxisSize.min,
                                       crossAxisAlignment:
                                       CrossAxisAlignment.start,
                                       mainAxisAlignment:
                                       MainAxisAlignment.center,
                                       children: [
                                        Padding(
                                            padding:
                                            getPadding(top: 4),
                                            child: Text(
                                                "lbl_expiray_date".tr,
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                textAlign:
                                                TextAlign.left,
                                                style: AppStyle
                                                    .txtAeonikRegular15Gray600))
                                       ])),
                             ),
                             SizedBox(width: getHorizontalSize(20),),
                             Expanded(
                               child: CustomTextFormField(
                                   fontStyle: TextFormFieldFontStyle.AeonikRegular15Black900,
                                   width: getHorizontalSize(206),
                                  
                                   controller: controller.cvvController,
                                   hintText: "lbl_cvv".tr,
                                   padding:
                                   TextFormFieldPadding.PaddingT19_2,
                                   textInputAction: TextInputAction.done,
                                   alignment: Alignment.centerRight),
                             )
                            ],
                           ),
                         )
                        ])),
              )),
          bottomNavigationBar: GetBuilder<YourCardController>(
            init: YourCardController(),
            builder:(controller) =>  Container(
                margin: getMargin(left: 20, right: 20, bottom: 40),
                decoration: AppDecoration.white,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_add".tr,
                          onTap: () {
                            controller.isNavigateToSetting?Get.back():onTapAdd();
                            controller.setNavigationIsSetting(false);
                          })
                    ])),
          )),
    );
  }

  onTapAdd() {
  Get.back();
  }

  onTapArrowleft16() {
    Get.back();
  }
}
