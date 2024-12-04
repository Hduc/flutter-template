import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

class PackageScreen extends StatefulWidget {
  const PackageScreen({Key? key}) : super(key: key);

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: getPadding(top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_our_pakage".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold20),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.ourPakageScreen);
                    },
                    child: Text("lbl_view_all2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyPink800),
                  )
                ])),
        Padding(
            padding: getPadding(top: 20, bottom: 10),
            child: Row(children: [
              Expanded(
                  child: Container(
                      margin: getMargin(right: 8),
                      padding: getPadding(left: 8, top: 5, right: 8, bottom: 6),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle53104x174,
                              height: getVerticalSize(104),
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            Padding(
                                padding: getPadding(top: 8),
                                child: Text("msg_haircut_hairstyle".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtHeadline)),
                            Padding(
                                padding: getPadding(top: 6),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_552".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtHeadline),
                                      Container(
                                        height: getVerticalSize(28),
                                        width: getHorizontalSize(97),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray100,
                                            borderRadius: BorderRadius.circular(
                                                getVerticalSize(8))),
                                        alignment: Alignment.center,
                                        child: Text("lbl_book_now".tr,
                                            style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400,
                                            )),
                                      )
                                    ]))
                          ]))),
              Expanded(
                  child: Container(
                      margin: getMargin(left: 8),
                      padding: getPadding(left: 8, top: 5, right: 8, bottom: 6),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle535,
                                height: getVerticalSize(104),
                                width: double.infinity,
                                fit: BoxFit.fill,
                                radius: BorderRadius.circular(
                                    getHorizontalSize(8))),
                            Padding(
                                padding: getPadding(top: 8),
                                child: Text("msg_haircut_hairstyle".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtHeadline)),
                            Padding(
                                padding: getPadding(top: 6),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_552".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtHeadline),
                                      Container(
                                        height: getVerticalSize(28),
                                        width: getHorizontalSize(97),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray100,
                                            borderRadius: BorderRadius.circular(
                                                getVerticalSize(8))),
                                        alignment: Alignment.center,
                                        child: Text("lbl_book_now".tr,
                                            style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'SF Pro Text',
                                              fontWeight: FontWeight.w400,
                                            )),
                                      )
                                    ]))
                          ])))
            ]))
      ],
    );
  }
}
