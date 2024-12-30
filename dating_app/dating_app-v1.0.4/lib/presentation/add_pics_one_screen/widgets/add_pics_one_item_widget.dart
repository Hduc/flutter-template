import '../controller/add_pics_one_controller.dart';
import '../models/add_pics_one_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddPicsOneItemWidget extends StatelessWidget {
  AddPicsOneItemWidget(
    this.addPicsOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddPicsOneItemModel addPicsOneItemModelObj;

  var controller = Get.find<AddPicsOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        141,
      ),
      width: getHorizontalSize(
        122,
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.gray50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Container(
                height: getVerticalSize(
                  140,
                ),
                width: getHorizontalSize(
                  121,
                ),
                padding: getPadding(
                  left: 44,
                  top: 54,
                  right: 44,
                  bottom: 54,
                ),
                decoration: AppDecoration.fill8.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLocation,
                      height: getSize(
                        32,
                      ),
                      width: getSize(
                        32,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomIconButton(
            height: 24,
            width: 24,
            padding: getPadding(
              all: 4,
            ),
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              svgPath: ImageConstant.imgPlus,
            ),
          ),
        ],
      ),
    );
  }
}
