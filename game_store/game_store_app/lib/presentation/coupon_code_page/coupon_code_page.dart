import '../../widgets/app_bar/custum_bottom_bar_controller.dart';
import '../coupon_code_page/widgets/coupon_code_item_widget.dart';
import 'controller/coupon_code_controller.dart';
import 'models/coupon_code_item_model.dart';
import 'models/coupon_code_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class CouponCodePage extends StatefulWidget {
  @override
  State<CouponCodePage> createState() => _CouponCodePageState();
}

class _CouponCodePageState extends State<CouponCodePage> {
  CouponCodeController controller =
      Get.put(CouponCodeController(CouponCodeModel().obs));

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomBottomBarController>(
      init: CustomBottomBarController(),
      builder:(customBottom) => Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(66),
              leadingWidth: 44,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleftBlack900,
                  margin: getMargin(left: 20, top: 17, bottom: 25),
                  onTap: () {
                    controller.isCouponNavOfPayment? onTapArrowleft18():customBottom.getIndex(0);


                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_coupon_code".tr),
              styleType: Style.bgFillWhiteA700),
          body: SafeArea(
            child: Padding(
                padding: getPadding(left: 20, top: 24, right: 20),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: controller.couponCodeModelObj.value
                        .couponCodeItemList.value.length,
                    itemBuilder: (context, index) {
                      CouponCodeItemModel model = controller.couponCodeModelObj
                          .value.couponCodeItemList.value[index];
                      return CouponCodeItemWidget(model, onTapColumnoffer: () {
                        controller.isCouponNavOfPayment? onTapArrowleft18():SizedBox();
                      });
                    }))),
          )),
    );
  }

  onTapColumnoffer() {

  }

  onTapArrowleft18() {
    Get.back();
  }
}
