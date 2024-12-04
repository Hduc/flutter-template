import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/reviews_screen/models/reviews_model.dart';

import '../controller/reviews_controller.dart';

// ignore: must_be_immutable
class ReviewsItemWidget extends StatelessWidget {
  ReviewsItemWidget(this.reviewsItemModelObj);

  ReviewsModel reviewsItemModelObj;

  var controller = Get.find<ReviewsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(all: 16),
      decoration: AppDecoration.fillGray50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: Constant.imagePath + reviewsItemModelObj.image,
                height: getSize(
                  56,
                ),
                width: getSize(
                  56,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    28,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 17,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      reviewsItemModelObj.name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtHeadline,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgIcstar,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgIcstar,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 5,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgIcstar,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 5,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgIcstar,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 5,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgIcstar,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: getMargin(
              top: 16,
            ),
            child: Text(
              "msg_it_is_a_long_established2".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtBody,
            ),
          ),
        ],
      ),
    );
  }
}
