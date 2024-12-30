import '../my_booking_complete_page/widgets/mybooking_item_widget.dart';
import 'controller/my_booking_complete_controller.dart';
import 'models/my_booking_complete_model.dart';
import 'models/mybooking_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyBookingCompletePage extends StatelessWidget {
  MyBookingCompleteController controller =
      Get.put(MyBookingCompleteController(MyBookingCompleteModel().obs));

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Obx(() => ListView.separated(
            padding: getPadding(left: 16, right: 16, top: 24),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: getVerticalSize(24));
            },
            itemCount: controller
                .myBookingCompleteModelObj.value.mybookingItemList.length,
            itemBuilder: (context, index) {
              MybookingItemModel model = controller
                  .myBookingCompleteModelObj.value.mybookingItemList[index];
              return MybookingItemWidget(model, onTapViewereciept: () {
                onTapViewereciept();
              });
            })));
  }

  onTapViewereciept() {
    Get.toNamed(
      AppRoutes.eRecieptScreen,
    );
  }
}
