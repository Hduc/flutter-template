import 'controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_text_form_field.dart';

import 'models/language_model.dart';
import 'models/languge.dart';

class LanguageScreen extends GetWidget<LanguageController> {
  LanguageController languageController =  Get.put(LanguageController());
List<Language> lan = Languages.defaultLanguages;
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
                onTap: onTapArrowleft23,
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleftBlack900,
                  margin: getMargin(left: 20, top: 17, bottom: 25),
                 ),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_language".tr),
              actions: [
                GestureDetector(
                  onTap: onTapArrowleft23,
                  child: Padding(
                      padding:
                          getPadding(left: 20, top: 23, right: 20, bottom: 26),
                      child: Text("lbl_apply".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAeonikBold14)),
                )
              ],
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 0, top: 27, right: 0, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                     Expanded(
                       child: Container(
                         color: ColorConstant.whiteA700,
                         child: ListView(
                           padding: getPadding(left: 20,right: 20),
                           children: [
                             Text("lbl_suggested".tr,
                                 overflow: TextOverflow.ellipsis,
                                 textAlign: TextAlign.left,
                                 style: AppStyle.txtHeadline),
                             SizedBox(height: getVerticalSize(8),),
                             ListView.builder(itemCount: lan.length,primary: false,shrinkWrap: true,itemBuilder: (context, index) {
                               return GetBuilder<LanguageController>(
                                 init: LanguageController(),
                                 builder:(controller) => Padding(
                                   padding: getPadding(top: 8,bottom: 8),
                                   child: GestureDetector(
                                     onTap: (){
                                       controller.setLanguge(index);
                                     },
                                     child: Container(
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(getHorizontalSize(20)),
                                           color: ColorConstant.whiteA700,
                                           boxShadow: [
                                             BoxShadow(offset: Offset(0, 6),
                                                 blurRadius: 30,
                                                 color: ColorConstant.black900.withOpacity(0.07))
                                           ]
                                       ),
                                       child: Padding(
                                         padding: getPadding(left: 16,right: 16,top: 11,bottom: 11),
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Text("${lan[index].name} (${lan[index].isoCode})",
                                                 overflow: TextOverflow.ellipsis,
                                                 textAlign: TextAlign.left,
                                                 style: AppStyle.txtBodyBlack900),
                                             SizedBox(width: getHorizontalSize(2)),
                                             controller.currentLanguage==index?CustomImageView(
                                               svgPath: ImageConstant.tickIcon,
                                               height: getSize(32),
                                               width: getSize(32),
                                             ):SizedBox( height: getSize(32),
                                               width: getSize(32),)


                                           ],
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),
                               );
                             },),
                           ],
                         ),
                       ),
                     ),

                    ])),
          )),
    );
  }

  onTapArrowleft23() {
    Get.back();
  }
  Widget buildDialogItem(Language language) => Row(
    children: <Widget>[
      Text(language.name),
      SizedBox(width: 8.0),
      Flexible(child: Text("(${language.isoCode})"))
    ],
  );
}
