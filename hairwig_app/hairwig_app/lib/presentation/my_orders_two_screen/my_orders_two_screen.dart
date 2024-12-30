import 'package:hairwig_app/widgets/custom_bottom_bar.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:hairwig_app/core/app_export.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../my_orders_one_screen/my_orders_one_screen.dart';
import 'controller/my_orders_two_controller.dart';
import 'models/my_order_model.dart';



class MyOrdersTwoScreen extends StatefulWidget {
  const MyOrdersTwoScreen({super.key});

  @override
  State<MyOrdersTwoScreen> createState() => _MyOrdersTwoScreenState();
}

class _MyOrdersTwoScreenState extends State<MyOrdersTwoScreen> {
  MyOrdersTwoController myOrdersTwoController = Get.put(MyOrdersTwoController());
  CustomBottomBarController customBottomBarController = Get.put(CustomBottomBarController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder<MyOrdersTwoController>(
      init: MyOrdersTwoController(),
      builder:(controller) =>  WillPopScope(
        onWillPop: () async {
          if(controller.isNavigateOrderConfirmScreen){
            customBottomBarController.getIndex(0);
            Get.offAllNamed(AppRoutes.homeContainerScreen);
          }
          else{
            Get.back();
          }
          return true;
        },
        child: ColorfulSafeArea(
          color: appTheme.white,
          child: Scaffold(
                backgroundColor: appTheme.gray10002,
              appBar: CustomAppBar(
                  height: getVerticalSize(73),
                  leadingWidth: getHorizontalSize(44),
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 20, top: 24, bottom: 25),
                      onTap: () {
if(controller.isNavigateOrderConfirmScreen){
  customBottomBarController.getIndex(0);
  Get.offAllNamed(AppRoutes.homeContainerScreen);
}
else{
  Get.back();
}

                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_my_orders".tr,),

                  styleType: Style.bgFill),
                body:GetBuilder<MyOrdersTwoController>(
                  init: MyOrdersTwoController(),
                  builder:(myOrdersTwoController) =>  myOrdersTwoController.getOrderData.isEmpty?
                      GetBuilder<CustomBottomBarController>(
                        init: CustomBottomBarController(),
                        builder:(controller) =>  Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(height: getSize(140),
                                width: getSize(140),
                                padding: getPadding(all: 28),
                                decoration: AppDecoration.fillGray200
                                    .copyWith(
                                    borderRadius: BorderRadiusStyle
                                        .circleBorder70),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgBox1,
                                    height: getSize(84),
                                    width: getSize(84),
                                    alignment: Alignment.center)),
                            Padding(padding: getPadding(top: 34),
                                child: Text("lbl_no_orders_yet".tr,
                                    style: theme.textTheme.headlineMedium)),
                            Container(width: getHorizontalSize(208),
                                margin: getMargin(top: 14),
                                child: Text("msg_when_you_place_an".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyLarge)),
                            CustomElevatedButton(
                                onTap: (){
                                  controller.getIndex(0);
                                  Get.offAllNamed(AppRoutes.homeContainerScreen);
                                },
                                height: getVerticalSize(
                                56),
                                width: getHorizontalSize(177),
                                text: "lbl_add".tr,
                                margin: getMargin(left: 15,
                                    top: 39,
                                    right: 14),
                                buttonStyle: CustomButtonStyles.fillPrimary,
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumOnPrimaryBold)
                          ],
                        ),
                      )
                      :Padding(
                    padding: getPadding(top: 8,bottom: 20),
                    child: Container(
                      width: double.infinity,
                      color: appTheme.gray10002,
                      child: ListView.builder(
                        primary: false,
                          shrinkWrap: true,
                        itemCount:myOrdersTwoController.getOrderData.length,

                        itemBuilder: (context, index) {
                          MyOrderItemModel data = myOrdersTwoController.getOrderData[index];
                        return  GestureDetector(
                          onTap: (){

                            Get.to(MyOrdersOneScreen(orderData: data,));

                          },
                          child: Padding(
                            padding:getPadding(top: 4,bottom: 4),
                            child: Container(

                                decoration: AppDecoration.white,
                                child: Padding(
                                  padding: getPadding(all: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 7, bottom: 6),
                                              child: Text("Order ID : ${data.id}",
                                                  style: CustomTextStyles.titleMedium16)),
                                          Padding(
                                              padding: getPadding(top: 7),
                                              child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,

                                                  children: [
                                                    Container(
                                                        height: getSize(10),
                                                        width: getSize(10),
                                                        margin: getMargin(top: 0, bottom: 0),
                                                        decoration: BoxDecoration(
                                                            color:appTheme.buttonColor,
                                                            borderRadius: BorderRadius.circular(
                                                                getHorizontalSize(5)))),
                                                    Padding(
                                                        padding: getPadding(left: 8),
                                                        child: Text("Order at ${data.time} | ${data.date}",
                                                            style: theme.textTheme.bodyLarge!))
                                                  ]))
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                        color:data.status!.toLowerCase() == "delivered"?appTheme.greenA700.withOpacity(0.10):data.status!.toLowerCase() == "cancelled"?
                                        appTheme.errorColor.withOpacity(0.10):appTheme.amberA700.withOpacity(0.10)
                                        ,borderRadius: BorderRadius.circular(getHorizontalSize(37))),
                                        child: Padding(
                                          padding: getPadding(top: 5,bottom: 5,left: 10,right: 10),
                                          child: Text(data.status!,style: CustomTextStyles.titleMediumGreenA700.copyWith(
                                              color: data.status!.toLowerCase() == "delivered"?appTheme.greenA700:data.status!.toLowerCase() == "cancelled"?
                                              appTheme.errorColor:appTheme.amberA700
                                          ),),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ),
                        );

                      },),
                    ),
                  ),
                )



               ),
              ),
      ),
    );
  }

  onTapArrowLeft() {
    Get.back();
  }

  onTapImgArrowLeft() {
    Get.back();
  }
}




