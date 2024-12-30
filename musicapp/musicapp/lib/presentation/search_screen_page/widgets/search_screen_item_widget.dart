import '../controller/search_screen_controller.dart';
import '../models/search_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

// ignore: must_be_immutable
class SearchScreenItemWidget extends StatelessWidget {
  SearchScreenItemWidget(
    this.searchScreenItemModelObj, this.index,{
    Key? key,
  }) : super(
          key: key,
        );

  SearchScreenItemModel searchScreenItemModelObj;
  int index;

  SearchScreenController searchScreenController = Get.put(SearchScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchScreenController>(
      init: SearchScreenController(),
      builder:(controller) =>  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgSearchGray600,
            height: getSize(
              20,
            ),
            width: getSize(
              20,
            ),
            margin: getMargin(
              top: 3,
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 2,
            ),
            child: Text(
              searchScreenItemModelObj.title!,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          CustomImageView(
            onTap: (){
              controller.removedata(index);
            },
            svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgClose:ImageConstant.imgCloseWhite,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
          ),
        ],
      ),
    );
  }
}
