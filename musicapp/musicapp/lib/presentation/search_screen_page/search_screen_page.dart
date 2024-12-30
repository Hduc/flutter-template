import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_searchview.dart';
import 'package:musicapp/widgets/app_bar/appbar_subtitle_1.dart';

import '../home_screen_page/controller/home_screen_controller.dart';
import '../home_screen_page/models/list18271_item_model.dart';
import '../recently_played_screen/widgets/recently_played_item_widget.dart';
import '../search_screen_page/widgets/search_screen_item_widget.dart';
import 'controller/search_screen_controller.dart';
import 'models/search_screen_item_model.dart';

class SearchScreenPage extends StatefulWidget {
  const SearchScreenPage({super.key});

  @override
  State<SearchScreenPage> createState() => _SearchScreenPageState();
}

class _SearchScreenPageState extends State<SearchScreenPage> {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  SearchScreenController searchScreenController =
      Get.put(SearchScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchScreenController>(
      init: SearchScreenController(),
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: getVerticalSize(24),
          ),
          Container(
              color: appTheme.bgColor,
              child: Padding(
                padding:getPadding(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: AppbarSearchview(
                        onSave: (newValue) {
                          controller.addData(newValue);
                          controller.setSearching(true);
                        },
                        margin: getMargin(
                          left: 20,
                        ),
                        hintText: "lbl_search".tr,
                        controller: controller.searchController,
                      ),
                    ),
                    AppbarSubtitle1(
                      onTap: () {
                        controller.setSearching(false);
                      },
                      text: "lbl_cancel".tr,
                      margin: getMargin(
                        left: 16,
                        top: 0,
                        right: 20,
                        bottom: 0,
                      ),
                    ),
                  ],
                ),
              )),
          controller.serching
              ? Expanded(
                  child: GridView.builder(
                    padding:
                        getPadding(top: 16, left: 20, right: 20, bottom: 16),
                    primary: false,
                    shrinkWrap: true,
                    itemCount: homeScreenController.recentPlayData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(284),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(16),
                        crossAxisSpacing: getHorizontalSize(16)),
                    itemBuilder: (context, index) {
                      List18271ItemModel model =
                          homeScreenController.recentPlayData[index];
                      return RecentlyPlayedItemWidget(model);
                    },
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(top: 24, left: 20, right: 20),
                      child: Text(
                        "lbl_recently_search".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 21,
                      ),
                      child: ListView.separated(
                        padding: getPadding(left: 20, right: 20),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: getVerticalSize(
                              16,
                            ),
                          );
                        },
                        itemCount: controller.searchData.length,
                        itemBuilder: (context, index) {
                          SearchScreenItemModel model =
                              controller.searchData[index];
                          return SearchScreenItemWidget(model, index);
                        },
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
