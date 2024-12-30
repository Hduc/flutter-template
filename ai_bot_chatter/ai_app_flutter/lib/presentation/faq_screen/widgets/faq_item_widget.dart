import '../controller/faq_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FaqItemWidget extends StatelessWidget {
  FaqItemWidget(this.faqItemModelObj, this.index);

  String faqItemModelObj;
  int index;

  var controller = Get.find<FaqController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          controller.index.value = index;
        },
        child: Obx(
          () => Container(
              margin: getMargin(
                right: 16,
              ),
              padding: getPadding(
                left: 16,
                top: 8,
                right: 16,
                bottom: 8,
              ),
              decoration: AppDecoration.txtOutlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.txtRoundedBorder16,
                color: controller.index.value == index
                    ? ColorConstant.black900
                    : ColorConstant.whiteA700,
                border: Border.all(
                  color: controller.index.value == index
                      ? ColorConstant.black900
                      : ColorConstant.gray400,
                ),
              ),
              child: Text(faqItemModelObj,
                  textAlign: TextAlign.left,
                  style: controller.index.value == index
                      ? AppStyle.txtHeadlineWhiteA700
                      : AppStyle.txtAirbnbCerealWMd16.copyWith(
                          color: ColorConstant.black900,
                        ))),
        ),
      ),
    );
  }
}
