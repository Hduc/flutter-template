// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/home_page_screen/controller/home_page_controller.dart';
import 'package:hair_salon_app/presentation/service_detail_three_screen/screen/description_screen.dart';
import 'package:hair_salon_app/presentation/service_detail_three_screen/screen/gallery_screen.dart';
import 'package:hair_salon_app/presentation/service_detail_three_screen/screen/review_screen.dart';
import 'package:hair_salon_app/presentation/service_detail_three_screen/screen/service_screen.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

import 'controller/service_detail_three_controller.dart';

// ignore: must_be_immutable
class ServiceDetailThreeScreen extends GetWidget<ServiceDetailThreeController> {
  static const List<Widget> _views = [
    const Center(child: const Text('Content of Tab One')),
    const Center(child: const Text('Content of Tab Two')),
    const Center(child: const Text('Content of Tab Three')),
    const Center(child: const Text('Content of Tab Three')),
    const Center(child: const Text('Content of Tab Three')),
  ];

  HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(primary: true, shrinkWrap: false, children: [
            Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle40,
                  height: getVerticalSize(209),
                  width: double.infinity,
                  alignment: Alignment.center),
              Container(
                  padding: getPadding(top: 8),
                  child: CustomAppBar(
                      height: getVerticalSize(36),
                      leadingWidth: 52,
                      leading: AppbarIconbutton1(
                          svgPath: ImageConstant.imgArrowleftBlack900,
                          margin: getMargin(left: 16),
                          onTap: () {
                            onTapArrowleft6();
                          }),
                      actions: [
                        AppbarIconbutton1(
                            svgPath: ImageConstant.imgBookmark,
                            margin: getMargin(left: 16, right: 16),
                            onTap: () {
                              onTapBookmark();
                            })
                      ]))
            ]),
            Container(
                padding: getPadding(left: 16, top: 15, right: 16, bottom: 17),
                decoration: AppDecoration.outlineGray300,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("msg_barbarllea_inova".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFProTextBold20),
                            Container(
                              height: getVerticalSize(30),
                              decoration: BoxDecoration(
                                color: ColorConstant.pink50,
                                borderRadius:
                                    BorderRadius.circular(getVerticalSize(16)),
                              ),
                              padding: getPadding(
                                  top: 6, bottom: 6, right: 20, left: 20),
                              alignment: Alignment.center,
                              child: Text(
                                "Open",
                                style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w600,
                                    height: 1),
                              ),
                            )
                          ]),
                      Padding(
                          padding: getPadding(top: 2),
                          child: Row(children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgIclocationPink800,
                              height: getSize(16),
                              width: getSize(16),
                            ),
                            Padding(
                                padding: getPadding(left: 8, top: 1),
                                child: Text("msg_parker_rd_allentown".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtFootnote))
                          ])),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgIcstar,
                                height: getSize(16),
                                width: getSize(16)),
                            Padding(
                                padding: getPadding(left: 8),
                                child: Text("lbl_4_8".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtFootnote)),
                            Padding(
                                padding: getPadding(left: 2),
                                child: Text("msg_2748_reviews".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtSFProTextRegular12Gray600))
                          ]))
                    ])),
            Container(
              padding: getPadding(left: 16, top: 20, right: 16, bottom: 20),
              decoration: AppDecoration.outlineGray300,
              child: Column(
                children: [
                  Container(
                    height: getVerticalSize(22),
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        controller: controller.tabController,
                        unselectedLabelColor: ColorConstant.gray600,
                        labelColor: ColorConstant.black900,
                        isScrollable: true,
                        indicatorPadding: EdgeInsets.zero,
                        onTap: (value) {
                          controller.selectedIndex.value = value;
                        },
                        labelPadding: getPadding(right: 14, left: 0),
                        labelStyle: AppStyle.txtCallout,
                        unselectedLabelStyle: AppStyle.txtBodyGray600,
                        indicatorColor: Colors.transparent,
                        tabs: [
                          Tab(
                            text: "Description",
                          ),
                          Tab(
                            text: "Services",
                          ),
                          Tab(
                            text: "Gallery",
                          ),
                          // Tab(
                          //   text: "Package",
                          // ),
                          Tab(
                            text: "Review",
                          )
                        ]),
                  ),
                  Obx(
                    () => Center(
                      child: [
                        DescriptionScreen(),
                        ServiceScreen(),
                        GalleryScreen(),
                        // PackageScreen(),
                        ReviewScreen()
                      ][controller.selectedIndex.value],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(top: 30, right: 24, left: 24, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.chatOneScreen);
                    },
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: Constant.imagePath + "massage.png",
                          height: getVerticalSize(40),
                          width: getVerticalSize(40),
                          margin: getMarginOrPadding(bottom: 8),
                        ),
                        Text(
                          "Massage",
                          style: AppStyle.txtFootnoteBlack900,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.callScreen);
                    },
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: Constant.imagePath + "cal.png",
                          height: getVerticalSize(40),
                          width: getVerticalSize(40),
                          margin: getMarginOrPadding(bottom: 8),
                        ),
                        Text(
                          "Call",
                          style: AppStyle.txtFootnoteBlack900,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      homePageController.selectedIndex.value = 1;
                      Get.toNamed(AppRoutes.homePageScreen);
                    },
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: Constant.imagePath + "location.png",
                          height: getVerticalSize(40),
                          width: getVerticalSize(40),
                          margin: getMarginOrPadding(bottom: 8),
                        ),
                        Text(
                          "Direction",
                          style: AppStyle.txtFootnoteBlack900,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: Constant.imagePath + "share.png",
                        height: getVerticalSize(40),
                        width: getVerticalSize(40),
                        margin: getMarginOrPadding(bottom: 8),
                      ),
                      Text(
                        "Share",
                        style: AppStyle.txtFootnoteBlack900,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding: getPadding(left: 12, right: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("lbl_our_specialist".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProTextBold20),
                      GestureDetector(
                          onTap: () {
                            onTapTxtViewall();
                          },
                          child: Padding(
                              padding: getPadding(bottom: 3),
                              child: Text("lbl_view_all2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBodyPink800)))
                    ])),
            Container(
                margin: getMargin(left: 12, top: 16, right: 20),
                padding: getPadding(left: 16, top: 6, right: 16, bottom: 6),
                decoration: AppDecoration.fillGray50
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse22,
                        height: getSize(58),
                        width: getSize(58),
                      ),
                      Padding(
                          padding: getPadding(left: 16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_esther_howard".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSubheadline),
                                Padding(
                                    padding: getPadding(top: 7),
                                    child: Text("lbl_sr_barber".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBody))
                              ])),
                    ])),
            Padding(
                padding: getPadding(left: 12, top: 20, right: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("lbl_nearest_salon".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProTextBold20),
                      GestureDetector(
                          onTap: () {
                            onTapTxtViewallone();
                          },
                          child: Padding(
                              padding: getPadding(top: 1, bottom: 2),
                              child: Text("lbl_view_all2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBodyPink800)))
                    ])),
            Padding(
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 113),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: Container(
                          padding: getPadding(left: 8, top: 8, right: 8),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle34112x172,
                                  height: getVerticalSize(106),
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                                Padding(
                                  padding: getPadding(top: 7),
                                  child: Text("lbl_serenity_salon".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBody),
                                ),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 10),
                                    child: Text("lbl_ln_singapore".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtFootnote))
                              ]))),
                  SizedBox(
                    width: getVerticalSize(20),
                  ),
                  Expanded(
                      child: Container(
                          padding: getPadding(left: 8, top: 8, right: 8),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle348,
                                  height: getVerticalSize(106),
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                                Padding(
                                  padding: getPadding(top: 7),
                                  child: Text("lbl_serenity_salon".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBody),
                                ),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 10),
                                    child: Text("lbl_ln_singapore".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtFootnote))
                              ])))
                ])),
          ]),
          CustomButton(
              height: getVerticalSize(53),
              text: "lbl_book_now".tr,
              margin: getMargin(left: 16, right: 16, bottom: 30),
              onTap: () {
                onTapBooknow();
              }),
        ],
      ),
    ));
  }

  onTapArrowleft6() {
    Get.back();
  }

  onTapBookmark() {
    Get.toNamed(
      AppRoutes.myBookmarkScreen,
    );
  }

  onTapTxtServices() {
    Get.toNamed(
      AppRoutes.serviceDetailOneScreen,
    );
  }

  onTapTxtGallery() {
    Get.toNamed(
      AppRoutes.serviceDetailTwoContainer1Screen,
    );
  }

  onTapTxtPackage() {
    Get.toNamed(
      AppRoutes.serviceDetailScreen,
    );
  }

  onTapTxtReview() {
    Get.toNamed(
      AppRoutes.serviceDetailFourScreen,
    );
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.selectSpecialistScreen,
    );
  }

  onTapTxtViewallone() {
    Get.toNamed(
      AppRoutes.nearbyLocationScreen,
    );
  }

  onTapBooknow() {
    Get.toNamed(
      AppRoutes.bookAppoimentScreen,
    );
  }
}
