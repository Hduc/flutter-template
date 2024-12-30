import 'package:hair_salon_app/presentation/cancel_booking_screen/cancel_booking_screen.dart';

import 'controller/my_booking_upcoming_controller.dart';
import 'models/my_booking_upcoming_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class MyBookingUpcomingPage extends StatelessWidget {
  MyBookingUpcomingController controller =
      Get.put(MyBookingUpcomingController(MyBookingUpcomingModel().obs));

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: getPadding(top: 24, left: 16, right: 16),
        primary: false,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
              padding: getPadding(top: 8, right: 8, left: 8, bottom: 16),
              decoration: AppDecoration.fillGray50,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle64,
                        height: getVerticalSize(156),
                        width: double.infinity),
                    Padding(
                        padding: getPadding(top: 16),
                        child: Text("msg_barbarllea_inova".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProTextBold20)),
                    Padding(
                        padding: getPadding(top: 8),
                        child: Text("msg_parker_rd_allentown".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtFootnote)),
                    Padding(
                        padding: getPadding(top: 16),
                        child: Text("lbl_services".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSubheadline)),
                    Padding(
                        padding: getPadding(top: 8),
                        child: Text("msg_quiff_thin_shaving".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtFootnoteBlack900)),
                    Padding(
                        padding: getPadding(top: 16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: CustomButton(
                                      height: getVerticalSize(39),
                                      text: "lbl_cancel_booking".tr,
                                      margin: getMargin(right: 12),
                                      variant: ButtonVariant.OutlinePink800,
                                      shape: ButtonShape.RoundedBorder19,
                                      padding: ButtonPadding.PaddingAll8,
                                      fontStyle:
                                          ButtonFontStyle.SFProTextBold15,
                                      onTap: () {
                                        onTapCancelbooking(context);
                                      })),
                              Expanded(
                                  child: CustomButton(
                                      height: getVerticalSize(39),
                                      text: "lbl_view_e_reciept2".tr,
                                      margin: getMargin(left: 12),
                                      shape: ButtonShape.RoundedBorder19,
                                      padding: ButtonPadding.PaddingAll8,
                                      fontStyle: ButtonFontStyle
                                          .SFProTextBold15WhiteA700,
                                      onTap: () {
                                        onTapViewereciept();
                                      }))
                            ]))
                  ]));
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: getVerticalSize(24),
          );
        },
        itemCount: controller.list.length);
  }

  onTapCancelbooking(BuildContext context) {
    // Get.toNamed(
    //   AppRoutes.cancelBookingScreen,
    // );
    showModalBottomSheet(
      backgroundColor: ColorConstant.whiteA700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(getHorizontalSize(32)),
            topRight: Radius.circular(getHorizontalSize(32))),
      ),
      context: context,
      builder: (context) {
        return CancelBookingScreen();
      },
    );
  }

  onTapViewereciept() {
    Get.toNamed(
      AppRoutes.eRecieptScreen,
    );
  }
}
