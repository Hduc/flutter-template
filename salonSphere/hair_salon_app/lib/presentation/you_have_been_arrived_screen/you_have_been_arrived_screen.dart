import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

class YouHaveBeenArrivedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(396),
        padding: getPadding(top: 30, bottom: 30),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: Constant.imagePath + "done.png",
                height: getVerticalSize(108),
                width: getVerticalSize(108),
              ),
              Padding(
                  padding: getPadding(top: 24),
                  child: Text("msg_you_have_arrived".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold22)),
              Container(
                  margin: getMargin(left: 111, top: 24, right: 111),
                  child: Text("msg_you_have_arrived2".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtBody)),
              CustomButton(
                  height: getVerticalSize(57),
                  text: "lbl_ok".tr,
                  margin: getMargin(top: 30, right: 77, left: 77),
                  onTap: () {
                    onTapOk();
                  })
            ]));
  }

  onTapOk() {
    Get.back();
  }
}
