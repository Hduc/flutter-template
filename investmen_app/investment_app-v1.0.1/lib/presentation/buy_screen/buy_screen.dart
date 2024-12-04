import 'package:slider_button/slider_button.dart';
import '../../core/utils/key_pad_widget.dart';
import 'controller/buy_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_drop_down.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

class BuyScreen extends GetWidget<BuyController> {
  TextEditingController pinController = TextEditingController();
  BuyController buyController = Get.put(BuyController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.lightBlue900,
          body: Container(
            width: size.width,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup14,
                  height: getVerticalSize(
                    251.00,
                  ),
                  width: getHorizontalSize(width),
                  fit: BoxFit.fill,
                  alignment: Alignment.topLeft,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomIconButton(
                              height: 50,
                              width: 50,
                              variant: IconButtonVariant.FillWhiteA70014,
                              onTap: () {
                                onTapBtnArrowleft();
                              },
                              child: CustomImageView(
                                  svgPath: ImageConstant
                                      .imgArrowleftWhiteA70050x50)),
                          SizedBox(
                            width: getHorizontalSize(95),
                          ),
                          Text("lbl_buy".tr,
                              overflow: TextOverflow.ellipsis,
                              style: AppStyle.txtInterSemiBold20
                                  .copyWith(height: getVerticalSize(1.12))),
                        ],
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 24),
                ),
                Container(
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL32,
                  ),
                  child: Padding(
                    padding: getPadding(top: 24),
                    child: ListView(
                        padding: getPadding(top: 24, left: 24, right: 24),
                        children: [
                          Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 16,
                                        top: 17,
                                        right: 16,
                                        bottom: 17),
                                    decoration: AppDecoration.outlineGray2001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse2832,
                                                  height: getSize(40.00),
                                                  width: getSize(40.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          20.00))),
                                              Padding(
                                                  padding: getPadding(left: 12),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_sbux".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterBold14Gray800
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.19))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 6),
                                                            child: Text(
                                                                "lbl_starbucks"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegularblack
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.27))))
                                                      ])),
                                            ],
                                          ),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgChart,
                                              height: getVerticalSize(40.00),
                                              width: getHorizontalSize(57.00),
                                              margin: getMargin(left: 44)),
                                          Padding(
                                              padding: getPadding(left: 28),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_35_123".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold14Gray800
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.19))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text(
                                                            "lbl_142".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular12Green500
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.27))))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 25),
                                    child: Text("lbl_15_423".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold44.copyWith(
                                            height: getVerticalSize(1.05)))),
                                CustomDropDown(
                                    width: 141,
                                    focusNode: FocusNode(),
                                    icon: Container(
                                        margin: getMargin(left: 7, right: 12),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownGray800)),
                                    hintText: "msg_buy_in_dollars".tr,
                                    margin: getMargin(top: 17),
                                    items: controller
                                        .buyModelObj.value.dropdownItemList,
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    }),
                                KeyPad(
                                  pinController: pinController,
                                  isPinLogin: false,
                                  onChange: (String pin) {
                                    buyController.setAmount(pin);
                                    print("pin is ${pin}");
                                  },
                                  onSubmit: (String pin) {
                                    buyController.setAmount(pin);
                                    print("pin is ${pin}");
                                  },
                                ),
                                SizedBox(
                                  height: getVerticalSize(24),
                                ),
                                SliderButton(
                                  vibrationFlag: true,
                                  shimmer: true,

                                  height: 72,
                                  width: double.infinity,
                                  action: () {
                                    Get.toNamed(AppRoutes.buyStockOptionScreen);
                                  },

                                  ///Put label over here
                                  label: Text("msg_swipe_to_make_a".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterBold16WhiteA700
                                          .copyWith(
                                              height: getVerticalSize(1.24))),
                                  child: Container(
                                    height: getVerticalSize(56),
                                    width: getHorizontalSize(56),
                                    child: Center(
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowrightWhiteA700,
                                          height: getSize(24.00),
                                          width: getSize(24.00),
                                          alignment: Alignment.center),
                                    ),
                                  ).paddingAll(8),

                                  ///Change All the color and size from here.
                                  radius: 8,
                                  buttonColor: ColorConstant.blue700,
                                  backgroundColor: ColorConstant.lightBlue900,
                                  highlightedColor: Colors.white,
                                  baseColor: Colors.white,
                                ),
                              ])
                        ]),
                  ),
                ).paddingOnly(top: 118)
              ],
            ),
          )),
    );
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
