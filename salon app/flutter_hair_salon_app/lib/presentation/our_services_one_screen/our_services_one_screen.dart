import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_image.dart';
import 'package:hair_salon_app/widgets/app_bar/appbar_title.dart';
import 'package:hair_salon_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

import '../service_detail_three_screen/controller/service_detail_three_controller.dart';
import '../service_detail_three_screen/models/service_model.dart';
import 'controller/our_services_one_controller.dart';

class OurServicesOneScreen extends GetWidget<OurServicesOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(26),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 28, bottom: 28),
                    onTap: () {
                      onTapArrowleft25();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_our_services".tr),
                styleType: Style.bgFillWhiteA700),
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(
                child: GetBuilder<ServiceDetailThreeController>(
                  init: ServiceDetailThreeController(),
                  builder: (controller) => ListView.separated(
                      padding: getPadding(top: 20, left: 16, right: 16),
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        ServiceModel serviceModel =
                            controller.serviceList[index];
                        return Container(
                          padding: getPadding(all: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                onTap: () {
                                  if (serviceModel.select) {
                                    controller.serviceList[index].select =
                                        false;
                                  } else {
                                    controller.serviceList[index].select = true;
                                  }
                                  controller.update();
                                },
                                svgPath: serviceModel.select
                                    ? Constant.imagePath + "check_button.svg"
                                    : Constant.imagePath + "uncheck.svg",
                                height: getVerticalSize(24),
                                width: getVerticalSize(24),
                              ),
                              SizedBox(
                                width: getVerticalSize(8),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(serviceModel.name,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline),
                                  SizedBox(
                                    height: getVerticalSize(6),
                                  ),
                                  Text(serviceModel.time,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtFootnoteBlack900),
                                ],
                              ),
                              Spacer(),
                              Text(serviceModel.price,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtCallout
                                      .copyWith(color: ColorConstant.pink800)),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(24),
                        );
                      },
                      itemCount: controller.serviceList.length),
                ),
              )
            ]),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(53),
                text: "Add  services",
                margin: getMargin(left: 16, right: 16, bottom: 27),
                onTap: () {
                  onTapBooknow();
                })));
  }

  onTapBooknow() {
    Get.toNamed(
      AppRoutes.bookAppoimentTwoScreen,
    );
  }

  onTapArrowleft25() {
    Get.back();
  }
}
