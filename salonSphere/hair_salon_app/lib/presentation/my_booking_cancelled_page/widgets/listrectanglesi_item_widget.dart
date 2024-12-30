// ignore_for_file: unused_import

import '../controller/my_booking_cancelled_controller.dart';
import '../models/listrectanglesi_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListrectanglesiItemWidget extends StatelessWidget {
  ListrectanglesiItemWidget(this.listrectanglesiItemModelObj);

  ListrectanglesiItemModel listrectanglesiItemModelObj;

  var controller = Get.find<MyBookingCancelledController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
         all: 8
        ),
        decoration: AppDecoration.fillGray50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: listrectanglesiItemModelObj.id!.value,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "msg_barbarllea_inova".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextBold20,
                  ),
                  // CustomButton(
                  //   height: getVerticalSize(
                  //     34,
                  //   ),
                  //   width: getHorizontalSize(
                  //     96,
                  //   ),
                  //   text: "lbl_cancelled".tr,
                  //   variant: ButtonVariant.FillRed600,
                  //   shape: ButtonShape.RoundedBorder8,
                  //   padding: ButtonPadding.PaddingAll8,
                  //   fontStyle: ButtonFontStyle.SFProTextSemibold16WhiteA700,
                  // ),
                  Container(
                    alignment: Alignment.center,
                    height: getVerticalSize(35),
                    width: getVerticalSize(102),
                    decoration: BoxDecoration(
                      color: ColorConstant.red600,
                      borderRadius: BorderRadius.circular(
                        getVerticalSize(
                          8,
                        ),
                      ),
                    ),
                    child: Text("lbl_cancelled".tr,
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
          ],
        ),
      ),
    );
  }
}
