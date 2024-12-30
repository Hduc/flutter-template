import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: getPadding(top: 22),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_our_reviews".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold20),
                  GestureDetector(
                      onTap: () {
                        onTapTxtViewall();
                      },
                      child: Text("lbl_view_all2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyPink800))
                ])),
        Container(
            margin: getMargin(top: 20),
            padding: getPadding(all: 16),
            decoration: AppDecoration.fillGray50,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: getPadding(top: 2),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse30,
                            height: getSize(56),
                            width: getSize(56),
                            radius:
                                BorderRadius.circular(getHorizontalSize(28))),
                        Padding(
                            padding: getPadding(left: 17),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("msg_brooklyn_simmons".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline),
                                  Padding(
                                      padding: getPadding(top: 8),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgIcstar,
                                            height: getSize(24),
                                            width: getSize(24)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgIcstar,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(left: 5)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgIcstar,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(left: 5)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgIcstar,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(left: 5)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgIcstar,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(left: 5))
                                      ]))
                                ]))
                      ])),
                  Container(
                      margin: getMargin(top: 16),
                      child: Text("msg_it_is_a_long_established".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBody))
                ]))
      ],
    );
  }

  onTapTxtViewall() {
    Get.toNamed(AppRoutes.reviewsScreen, arguments: false);
  }
}
