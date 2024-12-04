import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/home_page_screen/models/category_model.dart';
import 'package:hair_salon_app/presentation/home_page_screen/models/near_product_model.dart';

import '../../widgets/app_bar/appbar_subtitle_4.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../home_page_screen/controller/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(
          height: getVerticalSize(75),
          leadingWidth: getVerticalSize(61),
          leading: CustomImageView(
              imagePath: ImageConstant.imgEllipse1445x45,
              height: getSize(45),
              width: getSize(45),
              margin: getMargin(left: 16, top: 30)),
          title: Padding(
              padding: getPadding(left: 11, top: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppbarSubtitle4(text: "lbl_welcome".tr),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_ronald_richards".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProTextBold22))
                  ])),
          actions: [
            CustomIconButton(
                height: 40,
                width: 40,
                margin: getMargin(left: 16, top: 30, right: 16),
                variant: IconButtonVariant.FillPink50,
                child: CustomImageView(
                    svgPath: ImageConstant.imgNotificationBlack900))
          ]),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: getPadding(left: 16, right: 16, top: 30),
          child: CustomTextFormField(
              controller: controller.searchController,
              hintText: "lbl_search_here".tr,
              onTap: () {
                Get.toNamed(AppRoutes.searchScreen);
              },
              padding: TextFormFieldPadding.PaddingT13,
              textInputAction: TextInputAction.done,
              prefix: Container(
                  margin: getMargin(left: 20, top: 11, right: 13, bottom: 11),
                  child: CustomImageView(svgPath: ImageConstant.imgContrast)),
              prefixConstraints:
                  BoxConstraints(maxHeight: getVerticalSize(46))),
        ),
        Expanded(
          child: ListView(
            primary: true,
            shrinkWrap: false,
            children: [
              Container(
                  margin: getMargin(top: 30, right: 16, left: 16),
                  decoration: AppDecoration.fillRed100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 16, top: 24, bottom: 16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("lbl_25_discount".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProTextBold28),
                                  Padding(
                                      padding: getPadding(top: 8),
                                      child: Text("msg_learn_style_new".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtCallout)),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtBooknow();
                                    },
                                    child: Container(
                                      margin: getMarginOrPadding(top: 18),
                                      padding: getPadding(all: 10),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.pink800,
                                          borderRadius: BorderRadius.circular(
                                              getVerticalSize(10))),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_book_now".tr,
                                        style: AppStyle.txtSFProTextBold15
                                            .copyWith(
                                                color: ColorConstant.whiteA700),
                                      ),
                                    ),
                                  )
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle31,
                            height: getVerticalSize(159),
                            width: getVerticalSize(151))
                      ])),
              Padding(
                  padding: getPadding(left: 16, top: 30, right: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_categories".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProTextBold20),
                        GestureDetector(
                            onTap: () {
                              onTapTxtViewall();
                            },
                            child: Text("lbl_view_all".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtBodyPink800))
                      ])),
              GridView.builder(
                primary: false,
                shrinkWrap: true,
                padding: getPadding(left: 33, right: 33, top: 24),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisExtent: getVerticalSize(84),
                    crossAxisSpacing: 28,
                    mainAxisSpacing: 0),
                itemBuilder: (context, index) {
                  CategoryModel categoriesModel =
                      controller.categroryList[index];
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        onTapHaircut();
                      } else if (index == 1) {
                        onTapMakeup();
                      } else if (index == 2) {
                        onTapMassage();
                      } else if (index == 3) {
                        onTapManicure();
                      }
                    },
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath:
                                  Constant.imagePath + categoriesModel.image,
                              height: getSize(58),
                              width: getSize(58),
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(top: 7),
                              child: Text(categoriesModel.name,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtBody))
                        ]),
                  );
                },
              ),
              Padding(
                  padding: getPadding(left: 16, right: 16, top: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("msg_nearby_your_location".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProTextBold20),
                        GestureDetector(
                            onTap: () {
                              onTapTxtViewallone();
                            },
                            child: Text("lbl_view_all".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtBodyPink800))
                      ])),
              Container(
                height: getVerticalSize(32),
                margin: getMarginOrPadding(top: 16),
                child: ListView.separated(
                  padding: getPadding(left: 16, bottom: 0),
                  scrollDirection: Axis.horizontal,
                  primary: false,
                  shrinkWrap: true,
                  itemCount: controller.nearCateList.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: getVerticalSize(10),
                    );
                  },
                  itemBuilder: (context, index) {
                    String nearCate = controller.nearCateList[index];
                    return GestureDetector(
                      onTap: () {
                        controller.nearIndex.value = index;
                        if (index == 1) {
                          onTapHaircut();
                        } else if (index == 2) {
                          onTapMakeup();
                        } else if (index == 3) {
                          onTapManicure();
                        }
                      },
                      child: Obx(
                        () => Container(
                          padding: getPadding(
                              left: 24, right: 24, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                            color: controller.nearIndex.value == index
                                ? ColorConstant.pink800
                                : ColorConstant.whiteA700,
                            borderRadius:
                                BorderRadius.circular(getVerticalSize(8)),
                            border: controller.nearIndex.value == index
                                ? null
                                : Border.all(
                                    color: ColorConstant.pink800, width: 1),
                          ),
                          child: Text(
                            nearCate,
                            style: controller.nearIndex.value == index
                                ? AppStyle.txtFootnoteWhiteA700
                                : AppStyle.txtFootnotePink800,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              GridView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: controller.nearProductList.length,
                padding: getPadding(right: 16, left: 16, top: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: getVerticalSize(20),
                    mainAxisExtent: getVerticalSize(170)),
                itemBuilder: (context, index) {
                  NearProductModel nearProductModel =
                      controller.nearProductList[index];
                  return GestureDetector(
                    onTap: () {
                      onTapColumnrectangle();
                    },
                    child: Container(
                        padding: getPadding(left: 8, top: 8, right: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                            color: ColorConstant.gray50),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                width: double.infinity,
                                imagePath:
                                    Constant.imagePath + nearProductModel.image,
                                height: getVerticalSize(106),
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Text(nearProductModel.name,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBody)),
                              Padding(
                                  padding: getPadding(top: 4, bottom: 10),
                                  child: Text(nearProductModel.location,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSFProTextRegular11))
                            ])),
                  );
                },
              ),
              Padding(
                  padding: getPadding(left: 16, right: 16, top: 30),
                  child: Text("Special Offers",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold20)),
              Container(
                height: getVerticalSize(140),
                margin: getMarginOrPadding(top: 16),
                child: ListView.separated(
                    padding: getPadding(left: 16, right: 16),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      String specialOffer = controller.specialOfferList[index];
                      return Container(
                        height: getVerticalSize(140),
                        width: getVerticalSize(300),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(Constant.imagePath + "offer.png"),
                          fit: BoxFit.fill,
                        )),
                        padding: getPadding(left: 7, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(specialOffer,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSFProTextBold20
                                    .copyWith(color: ColorConstant.whiteA700)),
                            SizedBox(
                              height: getVerticalSize(8),
                            ),
                            Text("Where Beauty Takes Shape",
                                textAlign: TextAlign.left,
                                style: AppStyle.txtCallout
                                    .copyWith(color: ColorConstant.whiteA700)),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: getVerticalSize(16),
                      );
                    },
                    itemCount: controller.specialOfferList.length),
              ),
              Padding(
                  padding: getPadding(left: 16, right: 16, top: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top Rated Salons',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProTextBold20),
                        GestureDetector(
                            onTap: () {
                              onTapTxtViewallone();
                            },
                            child: Text("lbl_view_all".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtBodyPink800))
                      ])),
              GridView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: controller.nearProductList.length,
                padding: getPadding(right: 16, left: 16, top: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: getVerticalSize(20),
                    mainAxisExtent: getVerticalSize(169)),
                itemBuilder: (context, index) {
                  NearProductModel nearProductModel =
                      controller.nearProductList[index];
                  return GestureDetector(
                    onTap: () {
                      onTapColumnrectangle();
                    },
                    child: Container(
                        padding: getPadding(left: 8, top: 8, right: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                            color: ColorConstant.gray50),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                width: double.infinity,
                                imagePath:
                                    Constant.imagePath + nearProductModel.image,
                                height: getVerticalSize(106),
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                  padding: getPadding(top: 8),
                                  child: Text(nearProductModel.name,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtBody)),
                              Padding(
                                  padding: getPadding(top: 4, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(nearProductModel.location,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtSFProTextRegular11),
                                      Row(
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                Constant.imagePath + "star.svg",
                                            height: getVerticalSize(12),
                                            width: getVerticalSize(12),
                                          ),
                                          SizedBox(
                                            width: getVerticalSize(4),
                                          ),
                                          Text('5.0',
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtFootnoteWhiteA700
                                                  .copyWith(
                                                      color: ColorConstant
                                                          .black900))
                                        ],
                                      )
                                    ],
                                  ))
                            ])),
                  );
                },
              ),
            ],
          ),
        )
      ]),
    ));
  }

  onTapTxtBooknow() {
    Get.toNamed(
      AppRoutes.serviceDetailThreeScreen,
    );
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.categoriesScreen,
    );
  }

  onTapHaircut() {
    Get.toNamed(
      AppRoutes.nearbyLocationThreeScreen,
    );
    // TODO: implement Actions
  }

  onTapMakeup() {
    // TODO: implement Actions
    Get.toNamed(
      AppRoutes.nearbyLocation1Screen,
    );
  }

  onTapMassage() {
    // TODO: implement Actions
    Get.toNamed(
      AppRoutes.nearbyLocationOne1Screen,
    );
  }

  onTapManicure() {
    // TODO: implement Actions
    Get.toNamed(
      AppRoutes.nearbyLocationTwoScreen,
    );
  }

  onTapTxtViewallone() {
    Get.toNamed(
      AppRoutes.nearbyLocationScreen,
    );
  }

  onTapHaircutone() {
    // TODO: implement Actions
  }

  onTapMakeup1() {
    // TODO: implement Actions
  }

  onTapManicure1() {
    // TODO: implement Actions
  }

  onTapColumnrectangle() {
    Get.toNamed(
      AppRoutes.serviceDetailThreeScreen,
    );
  }
}
