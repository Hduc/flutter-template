import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import 'controller/payment_method_controller.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.white,

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             CustomAppBarText(
               title: 'Payment method',
             ),
             Divider(
              color: Color(0xFFE7E7E7),
              thickness: getSize(1.5),
             ),
              Expanded(
                child: GetBuilder<PaymentMethodController>(builder: (controller) {
                  return ListView(
                    physics: NeverScrollableScrollPhysics(),
                    padding: getPadding(top: getSize(16),left: getSize(16),right: getSize(16)),
                    children: [
                      Text("lbl_payment_method".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumBlack900),
                      SizedBox(
                        height: getSize(16),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: getPadding(left: getSize(16),right: getSize(16),top: getSize(20),bottom: getSize(20)),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Padding(
                                  padding: getPadding(all: getSize(6)),
                                  child: CustomImageView(
                                    svgPath: Assets.imagesImgIcPaypal ,
                                    height: getSize(24,),
                                    width: getSize(24,),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getSize(16),
                              ),
                              Expanded(
                                child: Text('Paypal',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),textAlign: TextAlign.start,),
                              ),
                              Theme(
                                data: Theme.of(context).copyWith(
                                    unselectedWidgetColor: Color(0xFF7C7C7C)

                                ),
                                child: Radio(
                                  activeColor: Color(0xFFAA6BE9),
                                  value: 1,

                                  groupValue: controller.card.value,
                                  onChanged: (values){
                                    // selectCard;
                                    controller.selectCard(values!);
                                    controller.update();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getSize(16),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: getPadding(left: getSize(16),right: getSize(16),top: getSize(20),bottom: getSize(20)),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Padding(
                                  padding: getPadding(all: getSize(6)),
                                  child: CustomImageView(
                                    svgPath: Assets.imagesImgBluetooth ,
                                    height: getSize(24,),
                                    width: getSize(24,),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getSize(16),
                              ),
                              Expanded(
                                child: Text('Visa',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),textAlign: TextAlign.start,),
                              ),
                              Theme(
                                data: Theme.of(context).copyWith(
                                    unselectedWidgetColor: Color(0xFF7C7C7C)

                                ),
                                child: Radio(
                                  activeColor: Color(0xFFAA6BE9),
                                  value: 2,

                                  groupValue: controller.card.value,
                                  onChanged: (values){
                                    // selectCard;
                                    controller.selectCard(values!);
                                    controller.update();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getSize(16),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: getPadding(left: getSize(16),right: getSize(16),top: getSize(20),bottom: getSize(20)),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Padding(
                                  padding: getPadding(all: getSize(6)),
                                  child: CustomImageView(
                                    svgPath: Assets.imagesImgGoogleAmber500 ,
                                    height: getSize(24,),
                                    width: getSize(24,),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getSize(16),
                              ),
                              Expanded(
                                child: Text('Google pay',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),textAlign: TextAlign.start,),
                              ),
                              Theme(
                                data: Theme.of(context).copyWith(
                                    unselectedWidgetColor: Color(0xFF7C7C7C)

                                ),
                                child: Radio(
                                  activeColor: Color(0xFFAA6BE9),
                                  value: 3,

                                  groupValue: controller.card.value,
                                  onChanged: (values){
                                    // selectCard;
                                    controller.selectCard(values!);
                                    controller.update();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getSize(16),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: getPadding(left: getSize(16),right: getSize(16),top: getSize(20),bottom: getSize(20)),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Padding(
                                  padding: getPadding(all: getSize(6)),
                                  child: CustomImageView(
                                    svgPath: Assets.imagesImgFire ,
                                    height: getSize(24,),
                                    width: getSize(24,),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getSize(16),
                              ),
                              Expanded(
                                child: Text('Apple pay',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),textAlign: TextAlign.start,),
                              ),
                              Theme(
                                data: Theme.of(context).copyWith(
                                    unselectedWidgetColor: Color(0xFF7C7C7C)

                                ),
                                child: Radio(
                                  activeColor: Color(0xFFAA6BE9),
                                  value: 4,

                                  groupValue: controller.card.value,
                                  onChanged: (values){
                                    // selectCard;
                                    controller.selectCard(values!);
                                    controller.update();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  );
                },init: PaymentMethodController(),)
              )
            ]),





        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_pay_now".tr,
            margin: getMargin(left: getSize(16), right: getSize(16), bottom: getSize(40)),
            buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getVerticalSize(54)))),
            buttonTextStyle: theme.textTheme.titleMedium!,
            onTap: () {
              print('Index======>${controller.card}');
              onTapPaynow();
            }));
  }


  onTapArrowleft26() {
    Get.back();
  }

  
  onTapPaynow() {
    Get.toNamed(
      AppRoutes.reviewSummaryScreen,
    );
  }
}
