import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/service_detail_three_screen/models/service_model.dart';

import '../controller/service_detail_three_controller.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: getPadding(top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_our_services".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold20),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.ourServicesOneScreen);
                    },
                    child: Text("lbl_view_all2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyPink800),
                  )
                ])),
        GetBuilder<ServiceDetailThreeController>(
          init: ServiceDetailThreeController(),
          builder: (controller) => ListView.separated(
              padding: getPadding(top: 24),
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                ServiceModel serviceModel = controller.serviceList[index];
                return Container(
                  padding: getPadding(all: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        onTap: () {
                          if (serviceModel.select) {
                            controller.serviceList[index].select = false;
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
              itemCount: 3),
        )
      ],
    );
  }
}
