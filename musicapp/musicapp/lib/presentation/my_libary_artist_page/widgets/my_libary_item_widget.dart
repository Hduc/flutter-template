import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

import '../../home_screen_page/models/list18271_item_model.dart';
import '../controller/my_libary_artist_controller.dart';

// ignore: must_be_immutable
class MyLibaryItemWidget extends StatelessWidget {
  MyLibaryItemWidget(
    this.myLibaryItemModelObj, {
    Key? key,
    this.onTapImgOverflowmenu,
  }) : super(
          key: key,
        );

  Artist myLibaryItemModelObj;

  MyLibaryArtistController controller = Get.put(MyLibaryArtistController());

  VoidCallback? onTapImgOverflowmenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 4,
      ),
      decoration: AppDecoration.fill2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: getSize(64),
                width: getSize(64),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                    image: DecorationImage(
                        image: AssetImage(myLibaryItemModelObj.ractangleImage!),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 6,
                  bottom: 7,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      myLibaryItemModelObj.name!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleMedium,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Text(
                        "${myLibaryItemModelObj.followers!} followers",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextThemeHelper.bodyLargeGray600_1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomImageView(
            svgPath:PrefUtils().getThemeData() == "primary"?ImageConstant.imgOverflowmenu: ImageConstant.imgOverflowmenuWhite,
            height: getSize(
              20,
            ),
            width: getSize(
              20,
            ),
            margin: getMargin(
              top: 7,
              right: 7,
              bottom: 37,
            ),
            onTap: () {
              onTapImgOverflowmenu?.call();
            },
          ),
        ],
      ),
    );
  }
}
