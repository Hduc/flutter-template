import '../my_bookmark_screen/widgets/mybookmark_item_widget.dart';
import 'controller/my_bookmark_controller.dart';
import 'models/mybookmark_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';

class MyBookmarkScreen extends GetWidget<MyBookmarkController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(81),
            leadingWidth: 42,
            leading: AppbarImage(
                height: getVerticalSize(24),
                width: getHorizontalSize(26),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 16, top: 28, bottom: 28),
                onTap: () {
                  onTapArrowleft17();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_my_bookmark".tr),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(32),
                  margin: getMarginOrPadding(top: 10),
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
                Expanded(
                    child: Padding(
                        padding: getPadding(top: 20, left: 16, right: 16),
                        child: Obx(() => GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: getVerticalSize(172),
                                    crossAxisCount: 2,
                                    mainAxisSpacing: getVerticalSize(24),
                                    crossAxisSpacing: getVerticalSize(20)),
                            physics: BouncingScrollPhysics(),
                            itemCount: controller.myBookmarkModelObj.value
                                .mybookmarkItemList.value.length,
                            itemBuilder: (context, index) {
                              MybookmarkItemModel model = controller
                                  .myBookmarkModelObj
                                  .value
                                  .mybookmarkItemList
                                  .value[index];
                              return MybookmarkItemWidget(model,
                                  onTapColumnrectangle: () {
                                onTapColumnrectangle();
                              });
                            }))))
              ]),
        ));
  }

  onTapColumnrectangle() {
    Get.back();
  }

  onTapArrowleft17() {
    Get.back();
  }
}
