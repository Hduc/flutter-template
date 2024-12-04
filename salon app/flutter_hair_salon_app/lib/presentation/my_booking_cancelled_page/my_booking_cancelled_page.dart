// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../my_booking_cancelled_page/widgets/listrectanglesi_item_widget.dart';
import 'controller/my_booking_cancelled_controller.dart';
import 'models/listrectanglesi_item_model.dart';
import 'models/my_booking_cancelled_model.dart';

// ignore: must_be_immutable
class MyBookingCancelledPage extends StatelessWidget {
  MyBookingCancelledController controller =
      Get.put(MyBookingCancelledController(MyBookingCancelledModel().obs));

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => ListView.separated(
          padding: getPadding(top: 24, right: 16, left: 16),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: getVerticalSize(
                24,
              ),
            );
          },
          itemCount: controller.myBookingCancelledModelObj.value
              .listrectanglesiItemList.value.length,
          itemBuilder: (context, index) {
            ListrectanglesiItemModel model = controller
                .myBookingCancelledModelObj
                .value
                .listrectanglesiItemList
                .value[index];
            return ListrectanglesiItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
