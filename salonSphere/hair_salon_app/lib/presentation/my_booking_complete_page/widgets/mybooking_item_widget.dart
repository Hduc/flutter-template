import '../controller/my_booking_complete_controller.dart';
import '../models/mybooking_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class MybookingItemWidget extends StatelessWidget {
  MybookingItemWidget(
    this.mybookingItemModelObj, {
    this.onTapViewereciept,
  });

  MybookingItemModel mybookingItemModelObj;

  var controller = Get.find<MyBookingCompleteController>();

  VoidCallback? onTapViewereciept;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(left: 8, bottom: 16, right: 8, top: 8),
      decoration: AppDecoration.fillGray50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: mybookingItemModelObj.id!.value,
            height: getVerticalSize(
              156,
            ),
            width: double.infinity,
          ),
          Padding(
            padding: getPadding(
              top: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "msg_barbarllea_inova".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextBold20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: getVerticalSize(35),
                  width: getVerticalSize(102),
                  decoration: BoxDecoration(
                    color: ColorConstant.green60001,
                    borderRadius: BorderRadius.circular(
                      getVerticalSize(
                        8,
                      ),
                    ),
                  ),
                  child: Text("lbl_completed".tr,
                      style: TextStyle(
                        color: ColorConstant.whiteA700,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w600,
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Text(
              "msg_parker_rd_allentown".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtFootnote,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
            ),
            child: Text(
              "lbl_services".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSubheadline,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 8,
            ),
            child: Text(
              "msg_quiff_thin_shaving".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtFootnoteBlack900,
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              39,
            ),
            text: "lbl_view_e_reciept2".tr,
            margin: getMargin(
              top: 16,
            ),
            shape: ButtonShape.RoundedBorder19,
            padding: ButtonPadding.PaddingAll8,
            fontStyle: ButtonFontStyle.SFProTextBold15WhiteA700,
            onTap: () {
              onTapViewereciept!();
            },
          ),
        ],
      ),
    );
  }
}
