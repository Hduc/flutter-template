import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/details_screen/widgets/intrest2_item_widget.dart';
import 'package:dating_app/presentation/home_page/models/model_data.dart';
import 'package:dating_app/presentation/likes_list_page/controller/likes_list_controller.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../data/pref_data.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/details_controller.dart';
import 'models/intrest2_item_model.dart';


// ignore: must_be_immutable
class DetailsScreen extends GetWidget<DetailsController> {
  // final HomeModel model;
  DetailsScreen({Key? key}) : super(key: key);
  LikesListController likesListController = Get.put(LikesListController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    // SystemChrome.setSystemUIOverlayStyle(
    //     const SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarIconBrightness:Brightness.light  ));

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        if (PrefData.currentIndex == 0) {
          {
           Get.back();
            controller.update();
          }
        }
        else {
         Get.back();
          controller.update();
        }
        return Future(() => false);
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Container(
                height: getSize(439),
                width: double.infinity,
                child: Stack(
                  children: [
                    PageView.builder(
                      itemCount: 5,
                      onPageChanged: (value) {
                        print(value);
                        controller.i.value = value;
                        controller.update();
                      },
                      itemBuilder: (context, index) {
                      return CustomImageView(
                        imagePath: likesListController.currentData!.img,
                        fit: BoxFit.fill,
                      );
                    },),
                    SafeArea(
                      child: Padding(
                        padding: getPadding(bottom: getSize(100)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  getPadding(left: getSize(16),right: getSize(16),top: getSize(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xFFF7F0FD),
                                      ),
                                      child:  Padding(
                                        padding:getPadding(all: getSize(7)),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgArrowleftBlack90024x24,
                                            color: Colors.black,
                                            height: getSize(24),
                                            width: getSize(24),
                                            alignment: Alignment.centerLeft,
                                            onTap: () {
                                              Get.back();
                                            }),
                                      ),
                                    ),
                                  ),
                                  likesListController.currentData!.isNear!?Padding(
                                    padding: getPadding(left:8,right:8,top:6,bottom: 6,),
                                    // child: CustomElevatedButton(
                                    //     text: likesListController.currentData!.near??"lbl_2_5_km".tr,
                                    //     leftIcon: Container(
                                    //       decoration: BoxDecoration(
                                    //       ),
                                    //       child: CustomImageView(
                                    //         svgPath: ImageConstant.imgRewind,
                                    //       ),
                                    //     ),
                                    //     buttonStyle: CustomButtonStyles
                                    //         .fillGray50TL6
                                    //         .copyWith(
                                    //         fixedSize: MaterialStateProperty
                                    //             .all<Size>(Size(
                                    //           getSize(
                                    //             65
                                    //           ),
                                    //           getSize(
                                    //               25
                                    //           ),
                                    //         ))),
                                    //     buttonTextStyle:
                                    //     CustomTextStyles.bodyMediumWhiteA700,
                                    //   ),
                                    child: Container(
                                      padding: getPadding(left: 8,top: 6,bottom: 5,right: 8),
                                      decoration: BoxDecoration(
                                        color: Color(0x26FFFFFF),
                                        borderRadius: BorderRadius.circular(getHorizontalSize(6)),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgRewind,
                                          ),
                                          Padding(
                                            padding: getPadding(left:8),
                                            child: Text(likesListController.currentData!.near??"lbl_2_5_km".tr,style: CustomTextStyles.bodyMediumWhiteA700,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ):SizedBox(),

                                ],
                              ),
                            ),
                            GetBuilder<DetailsController>(builder: (controller) {
                              return Container(
                                child: DotsIndicator(
                                  dotsCount: 5,
                                  reversed: false,
                                  position: controller.i.value,
                                  decorator: DotsDecorator(
                                    size: Size.square(getSize(6)),
                                    activeSize: Size(getSize(6),getSize(6)),
                                    color: const Color(0xFFF7F0FD),
                                    spacing: EdgeInsets.symmetric(horizontal: getSize(2)),
                                    activeColor:Color(0xFFAA6BE9),
                                  ),
                                ),
                              );

                            },init: DetailsController(),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: getPadding(top: getSize(410)),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(32),topRight: Radius.circular(32))
                  ),
                  child: ListView(
                    padding:getPadding(left: getSize(16),right: getSize(16),top: getSize(35)),
                    physics: BouncingScrollPhysics(),
                    children: [

                      Padding(
                          padding: getPadding(top: getSize(5)),
                          child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Text(likesListController.currentData!.name??"msg_jenny_wilson_24".tr,
                                          overflow:
                                          TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme
                                              .textTheme.titleLarge),
                                      Padding(
                                          padding:
                                          getPadding(top: getSize(12)),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgVuesaxboldbriefcase,
                                                height: getSize(18),
                                                width: getSize(18),
                                                margin: getMargin(
                                                    bottom: getSize(1))),
                                            Padding(
                                                padding: getPadding(
                                                    left: getSize(8)),
                                                child: Text(
                                                    "lbl_model".tr,
                                                    overflow:
                                                    TextOverflow
                                                        .ellipsis,
                                                    textAlign:
                                                    TextAlign
                                                        .left,
                                                    style: theme
                                                        .textTheme
                                                        .bodyLarge))
                                          ]))
                                    ]),
                                CustomIconButton(
                                    height: getSize(40),
                                    width: getSize(40),
                                    margin:
                                    getMargin(top: getSize(6), bottom: getSize(10)),
                                    padding: getPadding(all: getSize(8)),
                                    decoration: IconButtonStyleHelper
                                        .fillGray50,
                                    onTap: () {
                                      onTapBtnFavorite();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgFavorite))
                              ])),
                      Padding(
                          padding: getPadding(top: getSize(21)),
                          child: Text("lbl_about".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles
                                  .titleMediumBlack900)),
                      Padding(
                        padding: getPadding(top: getSize(16)),
                        child: Text("msg_i_am_single_25_years".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge),
                      ),
                      Padding(
                          padding: getPadding(top: getSize(16)),
                          child: Text("Interest".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles
                                  .titleMediumBlack900)),
                      Padding(
                          padding: getPadding(top: getSize(8)),
                          child: Obx(() => Wrap(
                              runSpacing: getSize(0),
                              spacing: getSize(15),
                              children: List<Widget>.generate(
                                  8, (index) {
                                Intrest2ItemModel model = controller
                                    .detailsModelObj
                                    .value
                                    .intrest2ItemList
                                    .value[index];
                                return Intrest2ItemWidget(model,text: HomeModelData.interest[index],);
                              })))),
                      Padding(
                          padding: getPadding(top: getSize(20)),
                          child: Text("lbl_gallery".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles
                                  .titleMediumBlack900)),
                      Obx(() => GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top:getSize(16),bottom: getSize(16) ),

                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent:
                              getSize(140),
                              crossAxisCount: 3,
                              mainAxisSpacing:
                              getSize(16),
                              crossAxisSpacing:
                              getSize(15)),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.detailsModelObj
                              .value.detailsItemList.value.length,
                          itemBuilder: (context, index) {

                            return CustomImageView(
                              imagePath: likesListController.currentData!.img??  ImageConstant.imgRectangle4401,
                              radius: BorderRadius.circular(
                                getSize(
                                  12,
                                ),
                              ),
                            );
                          }))
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }

  onTapBtnFavorite() {
    Get.toNamed(
      AppRoutes.matchSuccessScreen,
    );
  }
}
