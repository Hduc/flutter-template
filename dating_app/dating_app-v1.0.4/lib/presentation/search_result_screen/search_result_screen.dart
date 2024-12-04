import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/search_result_item_model.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(70),
                title: CustomTextFormField(
                    width: getHorizontalSize(336),
                    controller: controller.group910Controller,
                    margin: getMargin(left: 16),
                    contentPadding: getPadding(top: 17, bottom: 17),
                    textStyle: theme.textTheme.bodyLarge!,
                    hintText: "lbl_jenny_wilson".tr,
                    hintStyle: theme.textTheme.bodyLarge!,
                    textInputAction: TextInputAction.next,
                    prefix: Container(
                        margin:
                            getMargin(left: 20, top: 15, right: 13, bottom: 15),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgSearch)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(54)),
                    suffix: Container(
                        margin:
                            getMargin(left: 30, top: 15, right: 20, bottom: 15),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowrightBlack900)),
                    suffixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(54)),
                    filled: true,
                    fillColor: appTheme.gray50,
                   ),
                actions: [
                  GestureDetector(
                      onTap: () {
                        onTapTxtCancel();
                      },
                      child: Padding(
                          padding: getPadding(
                              left: 6, top: 18, right: 20, bottom: 17),
                          child: Text("lbl_cancel".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles
                                  .titleMediumBlack900SemiBold16)))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 15, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(253),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(16),
                        crossAxisSpacing: getHorizontalSize(16)),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller.searchResultModelObj.value
                        .searchResultItemList.value.length,
                    itemBuilder: (context, index) {
                      SearchResultItemModel model = controller
                          .searchResultModelObj
                          .value
                          .searchResultItemList
                          .value[index];
                      return SearchResultItemWidget(model, onTapClient: () {
                        onTapClient();
                      });
                    })))
        ));
  }

  /// Navigates to the detailsScreen when the action is triggered.
  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the detailsScreen.
  onTapClient() {
    Get.toNamed(AppRoutes.detailsScreen);
  }

  /// Navigates to the searchScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the searchScreen.
  onTapTxtCancel() {
    Get.toNamed(
      AppRoutes.searchScreen,
    );
  }
}
