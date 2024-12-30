import '../search_screen_fill_screen/widgets/search_screen1_item_widget.dart';
import 'controller/search_screen_fill_controller.dart';
import 'models/search_screen1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_searchview.dart';
import 'package:musicapp/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SearchScreenFillScreen extends GetWidget<SearchScreenFillController> {
  const SearchScreenFillScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
          height: getVerticalSize(
            76,
          ),
          title: AppbarSearchview(
            margin: getMargin(
              left: 20,
            ),
            hintText: "lbl_sad_song".tr,
            controller: controller.searchController,
          ),
          actions: [
            AppbarSubtitle1(
              text: "lbl_cancel".tr,
              margin: getMargin(
                left: 16,
                top: 18,
                right: 20,
                bottom: 16,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: getPadding(
            left: 20,
            top: 28,
            right: 20,
          ),
          child: Obx(
            () => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: getVerticalSize(
                  280,
                ),
                crossAxisCount: 2,
                mainAxisSpacing: getHorizontalSize(
                  16,
                ),
                crossAxisSpacing: getHorizontalSize(
                  16,
                ),
              ),
              physics: BouncingScrollPhysics(),
              itemCount: controller.searchScreenFillModelObj.value
                  .searchScreen1ItemList.value.length,
              itemBuilder: (context, index) {
                SearchScreen1ItemModel model = controller
                    .searchScreenFillModelObj
                    .value
                    .searchScreen1ItemList
                    .value[index];
                return SearchScreen1ItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
