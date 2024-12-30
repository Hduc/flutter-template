import 'package:expansion_tile_card/expansion_tile_card.dart';

import 'controller/help_and_support_controller.dart';

import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_search_view.dart';

class HelpAndSupportScreen extends GetWidget<HelpAndSupportController> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();

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
                    onTapArrowleft24();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_help".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 0, top: 24, right: 0, bottom: 24),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                    padding: getPadding(left: 20,right: 20),
                    child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search".tr,
                      prefix: Container(
                          margin:
                              getMargin(left: 16, top: 12, right: 8, bottom: 12),
                          child: CustomImageView(svgPath: ImageConstant.imgSearch)),
                      prefixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(48)),
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(24),
                  ),
                     Expanded(
                       child: ListView(
                         padding:getPadding(left: 20,right: 20),
                         children: [
                           Theme(
                              data: ThemeData(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                dividerColor: Colors.transparent,

                              ),
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
                               child: ExpansionTile(



                                 title: RichText(
                                     text: TextSpan(children: [
                                       TextSpan(
                                           text: "lbl_what_is_g".tr,
                                           style: TextStyle(
                                               color: ColorConstant.black900,
                                               fontSize: getFontSize(17),
                                               fontFamily: 'Aeonik',
                                               fontWeight: FontWeight.w700)),
                                       TextSpan(
                                           text: "lbl_amies".tr,
                                           style: TextStyle(
                                               color: ColorConstant.black900,
                                               fontSize: getFontSize(17),
                                               fontFamily: 'Aeonik',
                                               fontWeight: FontWeight.w700))
                                     ]),
                                     textAlign: TextAlign.left),
                                 childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),
                                 children: [
                                   Align(
                                     alignment: Alignment.centerLeft,
                                     child: Container(
                                         width: double.infinity,
                                         margin: getMargin(top: 0, right: 27),
                                         child: Text("msg_lorem_ipsum_dolor2".tr,
                                             maxLines: null,
                                             textAlign: TextAlign.left,
                                             style: AppStyle.txtAeonikRegular15Gray800)),
                                   )
                                 ],
                               ),
                             ),
                           ),
                           SizedBox(height: getVerticalSize(16),),
                           Theme(
                              data: ThemeData(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                dividerColor: Colors.transparent,

                              ),
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
                               child: ExpansionTile(
                                 childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),

                                 title: RichText(
                                     text: TextSpan(children: [
                                       TextSpan(
                                           text: "lbl_is_the_g".tr,
                                           style: TextStyle(
                                               color: ColorConstant.black900,
                                               fontSize: getFontSize(17),
                                               fontFamily: 'Aeonik',
                                               fontWeight: FontWeight.w700)),
                                       TextSpan(
                                           text: "lbl_amies_app_free".tr,
                                           style: TextStyle(
                                               color: ColorConstant.black900,
                                               fontSize: getFontSize(17),
                                               fontFamily: 'Aeonik',
                                               fontWeight: FontWeight.w700))
                                     ]),
                                     textAlign: TextAlign.left),
                                 children: [
                                   Align(
                                     alignment: Alignment.centerLeft,
                                     child: Container(
                                         width: double.infinity,
                                         margin: getMargin(top: 0, right: 27),
                                         child: Text("msg_lorem_ipsum_dolor2".tr,
                                             maxLines: null,
                                             textAlign: TextAlign.left,
                                             style: AppStyle.txtAeonikRegular15Gray800)),
                                   )
                                 ],
                               ),
                             ),
                           ),
                           SizedBox(height: getVerticalSize(16),),
                           Theme(
                              data: ThemeData(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                dividerColor: Colors.transparent,

                              ),
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
                               child: ExpansionTile(
                                 childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),

                                 title: RichText(
                                     text: TextSpan(children: [
                                       TextSpan(
                                           text: "lbl_how_can_i_use_g".tr,
                                           style: TextStyle(
                                               color: ColorConstant.black900,
                                               fontSize: getFontSize(17),
                                               fontFamily: 'Aeonik',
                                               fontWeight: FontWeight.w700)),
                                       TextSpan(
                                           text: "lbl_amies_app".tr,
                                           style: TextStyle(
                                               color: ColorConstant.black900,
                                               fontSize: getFontSize(17),
                                               fontFamily: 'Aeonik',
                                               fontWeight: FontWeight.w700))
                                     ]),
                                     textAlign: TextAlign.left),
                                 children: [
                                   Align(
                                     alignment: Alignment.centerLeft,
                                     child: Container(
                                         width: double.infinity,
                                         margin: getMargin(top: 0, right: 27),
                                         child: Text("msg_lorem_ipsum_dolor2".tr,
                                             maxLines: null,
                                             textAlign: TextAlign.left,
                                             style: AppStyle.txtAeonikRegular15Gray800)),
                                   )
                                 ],
                               ),
                             ),
                           ),
                           SizedBox(height: getVerticalSize(16),),
                           Theme(
                              data: ThemeData(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                dividerColor: Colors.transparent,

                              ),
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
                               child: ExpansionTile(
                                 childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),

                                 title: RichText(
                                     text: TextSpan(children: [
                                       TextSpan(
                                           text: "msg_how_can_i_log_out2".tr,
                                           style: TextStyle(
                                               color: ColorConstant.black900,
                                               fontSize: getFontSize(17),
                                               fontFamily: 'Aeonik',
                                               fontWeight: FontWeight.w700)),
                                       TextSpan(
                                           text: "lbl_amies".tr,
                                           style: TextStyle(
                                               color: ColorConstant.black900,
                                               fontSize: getFontSize(17),
                                               fontFamily: 'Aeonik',
                                               fontWeight: FontWeight.w700))
                                     ]),
                                     textAlign: TextAlign.left),
                                 children: [
                                   Align(
                                     alignment: Alignment.centerLeft,
                                     child: Container(
                                         width: double.infinity,
                                         margin: getMargin(top: 0, right: 27),
                                         child: Text("msg_lorem_ipsum_dolor2".tr,
                                             maxLines: null,
                                             textAlign: TextAlign.left,
                                             style: AppStyle.txtAeonikRegular15Gray800)),
                                   )
                                 ],
                               ),
                             ),
                           ),
                           SizedBox(height: getVerticalSize(16),),
                           Theme(
                              data: ThemeData(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                dividerColor: Colors.transparent,

                              ),
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
                               child: ExpansionTile(
                                 childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),

                                 title:  RichText(
                                     text: TextSpan(children: [
                                       TextSpan(
                                           text: "lbl_how_to_close_g".tr,
                                           style: TextStyle(
                                               color: ColorConstant.black900,
                                               fontSize: getFontSize(17),
                                               fontFamily: 'Aeonik',
                                               fontWeight: FontWeight.w700)),
                                       TextSpan(
                                           text: "lbl_amies_account".tr,
                                           style: TextStyle(
                                               color: ColorConstant.black900,
                                               fontSize: getFontSize(17),
                                               fontFamily: 'Aeonik',
                                               fontWeight: FontWeight.w700))
                                     ]),
                                     textAlign: TextAlign.left),
                                 children: [
                                   Align(
                                     alignment: Alignment.centerLeft,
                                     child: Container(
                                         width: double.infinity,
                                         margin: getMargin(top: 0, right: 27),
                                         child: Text("msg_lorem_ipsum_dolor2".tr,
                                             maxLines: null,
                                             textAlign: TextAlign.left,
                                             style: AppStyle.txtAeonikRegular15Gray800)),
                                   )
                                 ],
                               ),
                             ),
                           ),
                           SizedBox(height: getVerticalSize(16),),
                           Theme(
                              data: ThemeData(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                dividerColor: Colors.transparent,

                              ),
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
                               child: ExpansionTile(
                                 childrenPadding:getPadding(left: 20,right: 20,top: 0,bottom: 18),

                                 title: Text("lbl_question".tr,
                                     overflow: TextOverflow.ellipsis,
                                     textAlign: TextAlign.left,
                                     style: AppStyle.txtHeadline),
                                 children: [
                                   Align(
                                     alignment: Alignment.centerLeft,
                                     child: Container(
                                         width: double.infinity,
                                         margin: getMargin(top: 0, right: 27),
                                         child: Text("msg_lorem_ipsum_dolor2".tr,
                                             maxLines: null,
                                             textAlign: TextAlign.left,
                                             style: AppStyle.txtAeonikRegular15Gray800)),
                                   )
                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                     )





                ])),
          )),
    );
  }

  onTapArrowleft24() {
    Get.back();
  }

}
