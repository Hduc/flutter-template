import '../controller/select_specialist_controller.dart';
import '../models/select_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore: must_be_immutable
class SelectItemWidget extends StatelessWidget {
  SelectItemWidget(this.selectItemModelObj, this.index);

  SelectItemModel selectItemModelObj;
  int index;

  var controller = Get.find<SelectSpecialistController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>  GestureDetector(
        onTap: () {
          controller.selectedIndex.value = index;
        },
        child: Container(
          padding: getPadding(all: 16),
          decoration: AppDecoration.fillGray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
            border: controller.selectedIndex.value == index ?  Border.all(
              color: ColorConstant.pink800,
              width: 1,
            ) : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: Constant.imagePath + selectItemModelObj.image,
                    height: getSize(
                      58,
                    ),
                    width: getSize(
                      58,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        29,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          selectItemModelObj.nameTxt,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProTextBold20,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Text(
                            selectItemModelObj.titleTxt,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtBody,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Obx(
              //   () => CustomImageView(
              //     svgPath: controller.selectedIndex.value == index
              //         ? ImageConstant.imgClock
              //         : ImageConstant.imgIcradiobutton,
              //     height: getSize(
              //       24,
              //     ),
              //     width: getSize(
              //       24,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
