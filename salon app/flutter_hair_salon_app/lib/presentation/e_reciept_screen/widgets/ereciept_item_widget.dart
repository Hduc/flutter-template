import '../controller/e_reciept_controller.dart';
import '../models/ereciept_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore: must_be_immutable
class ErecieptItemWidget extends StatelessWidget {
  ErecieptItemWidget(this.erecieptItemModelObj);

  ErecieptItemModel erecieptItemModelObj;

  var controller = Get.find<ERecieptController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 15,
          top: 14,
          right: 15,
          bottom: 14,
        ),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Obx(
              () => Text(
                erecieptItemModelObj.nameTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtHeadline,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Obx(
                      () => Text(
                        erecieptItemModelObj.specialistTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyGray600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Obx(
                      () => Text(
                        erecieptItemModelObj.specialistvalueTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Obx(
                      () => Text(
                        erecieptItemModelObj.phoneTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyGray600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Obx(
                      () => Text(
                        erecieptItemModelObj.phonevalueTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 22,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text(
                      erecieptItemModelObj.bookingdateTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBodyGray600,
                    ),
                  ),
                  Obx(
                    () => Text(
                      erecieptItemModelObj.dateTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBody,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Obx(
                      () => Text(
                        erecieptItemModelObj.bookinghoursTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyGray600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Obx(
                      () => Text(
                        erecieptItemModelObj.timeTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBody,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
