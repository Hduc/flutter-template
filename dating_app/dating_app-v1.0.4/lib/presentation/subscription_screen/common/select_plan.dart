import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../generated/assets.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../controller/subscription_controller.dart';

class SelectPlan extends StatelessWidget {
  const SelectPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetBuilder<SubscriptionController>(builder: (controller) {
      return Expanded(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding:getPadding(all: getSize(16)),
          children: [
            Container(
                padding: getPadding(all: getSize(16)),
                decoration: AppDecoration.outline6.copyWith(
                    color: Colors.white,
                    borderRadius:
                    BorderRadiusStyle.roundedBorder12),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: getSize(4)),
                          child: Text("lbl_standard".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme
                                  .textTheme.headlineSmall)
                      ),
                      Padding(
                        padding: getPadding(top: getSize(12)),
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
                            Text('Like 20 person daily',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(top: getSize(12)),
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
                            Text('Chat feature remove after 24 hours',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),)
                          ],
                        ),
                      ),

                     Padding(
                       padding: getPadding(top: getSize(16)),
                       child: Container(
                         width: double.infinity,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           color: Color(0xFFE7E7E7),
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Padding(
                           padding: getPadding(top: getSize(13),bottom: getSize(13),left: getSize(18.38),right: getSize(18.38)),
                           child: Text('Selected plan',style: TextStyle(
                             color:  Color(0xFF7C7C7C),
                             fontSize: 18,
                             fontWeight: FontWeight.w700,
                           ),),
                         ),
                       ),
                     )
                    ])),
            GestureDetector(
              onTap: () {
                controller.isPremium = true;
                controller.isYearly =false;
                controller.update();
              },
              child: Container(
                  margin: getMargin(top: 16),
                  padding: getPadding(all: getSize(16)),
                  decoration: AppDecoration.outline7.copyWith(
                    color: Colors.white,
                      border: Border.all(
                        color: controller.isPremium?Color(0xFFAA6BE9):Colors.transparent,
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
                          padding: getPadding(top: getSize(12)),
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
                          padding: getPadding(top: getSize(12)),
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
                          padding: getPadding(top: getSize(12)),
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
                          padding: getPadding(top: getSize(12)),
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
                        CustomElevatedButton(
                            text: "lbl_select_plan".tr,
                            margin:
                            getMargin(top: getSize(16), bottom: getSize(14)),
                            buttonStyle: CustomButtonStyles
                                .fillPrimary
                                .copyWith(
                                fixedSize:
                                MaterialStateProperty
                                    .all<Size>(Size(
                                    double
                                        .maxFinite,
                                    getVerticalSize(
                                        54)))),
                            buttonTextStyle:
                            theme.textTheme.titleMedium!,
                            onTap: () {
                              onTapSelectplan();
                            })
                      ])),
            ),
            GestureDetector(
              onTap: () {
                controller.isYearly =true;
                controller.isPremium = false;

                controller.update();
              },
              child: Container(
                  margin: getMargin(top: getSize(16)),
                  padding: getPadding(all: getSize(16)),
                  decoration: AppDecoration.outline8.copyWith(
                      border: Border.all(
                        color: controller.isYearly?Color(0xFFAA6BE9):Colors.transparent,
                        width: getSize(2),
                      ),
                      color: Colors.white,
                      borderRadius:
                      BorderRadiusStyle.roundedBorder12),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: getPadding(top: 5),
                            child: Text("lbl_yearly".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme
                                    .textTheme.headlineSmall)),
                        Padding(
                            padding: getPadding(top: 19),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_20_002".tr,
                                      style: CustomTextStyles
                                          .titleMediumBlack900_1),
                                  TextSpan(
                                      text: "lbl_month".tr,
                                      style: theme
                                          .textTheme.titleSmall)
                                ]),
                                textAlign: TextAlign.left)),
                        Padding(
                          padding: getPadding(top: getSize(12)),
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
                          padding: getPadding(top: getSize(12)),
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
                              Text('Like 100 person daily',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16  ,
                              ),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: getSize(12)),
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
                              Text('Remove ads ',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16  ,
                              ),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: getSize(12)),
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
                                fontSize: 16  ,
                              ),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: getSize(12)),
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
                              Text('Access full app feature',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16  ,
                              ),)
                            ],
                          ),
                        ),

                        CustomElevatedButton(
                            text: "lbl_select_plan".tr,
                            margin: getMargin(top: 16),
                            buttonStyle: CustomButtonStyles
                                .fillPrimary
                                .copyWith(
                                fixedSize:
                                MaterialStateProperty
                                    .all<Size>(Size(
                                    double
                                        .maxFinite,
                                    getVerticalSize(
                                        54)))),
                            buttonTextStyle:
                            theme.textTheme.titleMedium!,
                            onTap: () {
                              onTapSelectplanone();
                            })
                      ]
                  )
              ),
            ),
          ],
        ),
      );
    },init: SubscriptionController(),);
  }
  onTapArrowleft25() {
    Get.back();
  }
  onTapSelectplan() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }
  onTapSelectplanone() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }
}
