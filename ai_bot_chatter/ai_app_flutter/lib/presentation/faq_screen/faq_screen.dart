import '../faq_screen/widgets/faq_item_widget.dart';
import 'controller/faq_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_image.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_title.dart';
import 'package:ai_app_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FaqScreen extends GetWidget<FaqController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(65),
            leadingWidth: 66,
            leading: AppbarImage(
                height: getSize(24),
                width: getSize(24),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 20, top: 21, bottom: 20, right: 20),
                onTap: () {
                  onTapArrowleft49();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_faq".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(height: getVerticalSize(8)),
            Container(
                height: getVerticalSize(40),
                child: Obx(() => ListView.separated(
                    padding: getPadding(left: 20),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount:
                        controller.faqModelObj.value.faqItemList.length,
                    itemBuilder: (context, index) {
                      String model =
                          controller.faqModelObj.value.faqItemList[index];
                      return FaqItemWidget(model, index);
                    }))),
            Expanded(
              child: ListView.separated(
                  padding: getPadding(top: 104, right: 20, left: 20),
                  primary: true,
                  shrinkWrap: false,
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      backgroundColor: ColorConstant.gray100,
                      collapsedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      collapsedBackgroundColor: ColorConstant.gray100,
                      title: Text(controller.faqModelObj.value.faqList[index],
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline),
                      iconColor: ColorConstant.gray600,
                      collapsedIconColor: ColorConstant.gray600,
                      children: [
                        Padding(
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAirbnbCerealWLt14Gray800),
                          padding:
                              getPadding(left: 16, right: 19, bottom: 16),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(16),
                    );
                  },
                  itemCount: controller.faqModelObj.value.faqList.length),
            )
          ]),
        ));
  }

  onTapArrowleft49() {
    Get.back();
  }
}
