import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';
import 'package:dating_app/data/pref_data.dart';
import 'package:dating_app/presentation/payment_method_screen/controller/payment_method_controller.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import '../../generated/assets.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/review_summary_controller.dart';

class ReviewSummaryScreen extends GetWidget<ReviewSummaryController> {
  const ReviewSummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor:Colors.white,

        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             CustomAppBarText(
               title: 'Review summary',
             ),
             Divider(
              color: Color(0xFFE7E7E7),
              thickness: getSize(1.5),
             ),
              Container(
                 margin: getMargin(top: getSize(16),left: getSize(16),right: getSize(16)),
                 padding: getPadding(all: getSize(16)),
                 decoration: AppDecoration.outline7.copyWith(
                     color: Colors.white,
                     border: Border.all(
                      color: Colors.transparent,
                      width: getSize(2),
                     ),
                     borderRadius:
                     BorderRadiusStyle.roundedBorder12),
                 child: Column(
                     mainAxisSize: MainAxisSize.min,
                     crossAxisAlignment:
                     CrossAxisAlignment.start,
                     mainAxisAlignment:
                     MainAxisAlignment.start,
                     children: [
                      Text("lbl_premium".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                          theme.textTheme.headlineSmall),
                      Padding(
                          padding: getPadding(top: getSize(16)),
                          child: RichText(
                              text: TextSpan(children: [
                               TextSpan(
                                   text: "lbl_12_002".tr,
                                   style: CustomTextStyles
                                       .titleMediumBlack900_1),
                               TextSpan(
                                   text: "lbl_month".tr,
                                   style: theme
                                       .textTheme.titleSmall)
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                       padding: getPadding(top: getSize(16)),
                       child: Row(
                        children: [
                         CustomImageView(
                          svgPath: Assets.imagesImgCheckmarkGray600 ,
                          height: getSize(24,),
                          width: getSize(24,),
                         ),
                         SizedBox(
                          width: getSize(16),
                         ),
                         Text('Applicable for 24 hrs only',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16  ,
                         ),)
                        ],
                       ),
                      ),
                      Padding(
                       padding: getPadding(top: getSize(16)),
                       child: Row(
                        children: [
                         CustomImageView(
                          svgPath: Assets.imagesImgCheckmarkGray600 ,
                          height: getSize(24,),
                          width: getSize(24,),
                         ),
                         SizedBox(
                          width: getSize(16),
                         ),
                         Text('Like 50 person daily',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize:16,
                         ),)
                        ],
                       ),
                      ),
                      Padding(
                       padding: getPadding(top: getSize(16)),
                       child: Row(
                        children: [
                         CustomImageView(
                          svgPath: Assets.imagesImgCheckmarkGray600 ,
                          height: getSize(24,),
                          width: getSize(24,),
                         ),
                         SizedBox(
                          width: getSize(16),
                         ),
                         Text('Remove ads',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                         ),)
                        ],
                       ),
                      ),
                      Padding(
                       padding: getPadding(top: getSize(16)),
                       child: Row(
                        children: [
                         CustomImageView(
                          svgPath: Assets.imagesImgCheckmarkGray600 ,
                          height: getSize(24,),
                          width: getSize(24,),
                         ),
                         SizedBox(
                          width: getSize(16),
                         ),
                         Text('Chat with mutual matches',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                         ),)
                        ],
                       ),
                      ),

                     ]
                 )
              ),
              Container(
                  margin: getMargin(top: getSize(24),left: getSize(16),right: getSize(16)),
                  padding: getPadding(all: getSize(16)),
                  decoration: AppDecoration.fill8.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                            children: [
                              Text("lbl_amount".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodyLarge),
                              Expanded(
                                child: Text("lbl_12_003".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: theme.textTheme.bodyLarge),
                              )
                            ]),
                        Padding(
                            padding: getPadding(top: getSize(20)),
                            child: Row(
                             
                                children: [
                                  Text("lbl_tax".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodyLarge),
                                  Expanded(
                                    child: Text("lbl_2_00".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: theme.textTheme.bodyLarge),
                                  )
                                ])),
                        Padding(
                            padding: getPadding(top: getSize(16)),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: theme
                                    .colorScheme.onPrimaryContainer)),
                        Padding(
                            padding: getPadding(top: getSize(16)),
                            child: Row(

                                children: [
                                  Text("lbl_total".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleMediumBlack900),
                                  Expanded(
                                    child: Text("lbl_14_00".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: CustomTextStyles
                                            .titleMediumBlack900),
                                  )
                                ]))
                      ])),
              GetBuilder<PaymentMethodController>(builder: (payController) {
                return Container(
                    margin: getMargin(top: getSize(16),left: getSize(16),right: getSize(16)),
                    padding: getPadding(
                        left: getSize(16), top: getSize(20), right: getSize(16), bottom: getSize(20)),
                    decoration: AppDecoration.fill8.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomIconButton(
                              height: getSize(36),
                              width: getSize(36),
                              padding: getPadding(all: getSize(6)),
                              decoration:
                              IconButtonStyleHelper.fillWhiteA700,
                              child: CustomImageView(
                                  // ignore: unrelated_type_equality_checks
                                  svgPath: payController.card == 1 ?Assets.imagesImgIcPaypal:payController.card==2?Assets.imagesImgBluetooth:payController.card==3?Assets.imagesImgGoogleAmber500:Assets.imagesImgFire)),
                          Padding(
                              padding:
                              getPadding(left: getSize(16), top: getSize(8),bottom: getSize(5)),
                              // ignore: unrelated_type_equality_checks
                              child: Text(payController.card == 1 ?"Paypal":payController.card==2?'Visa':payController.card==3?'Google pay':'Apple pay'.tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleMediumBlack900)),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Padding(
                                padding: getPadding(top: getSize(10), bottom: getSize(8)),
                                child: Text("lbl_change".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall)),
                          )
                        ]));
              },init: PaymentMethodController(),)
            ]),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_pay_now".tr,
            onTap: () {
              PrefData.currentIndex=0;
              controller.update();
              Get.toNamed(AppRoutes.locationAccessContainer1Screen);
            },
            margin: getMargin(left: getSize(16), right: getSize(16), bottom: getSize(40)),
            buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getSize(54)))),
            buttonTextStyle: theme.textTheme.titleMedium!));
  }

  onTapArrowleft27() {
    Get.back();
  }
}
