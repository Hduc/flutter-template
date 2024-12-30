import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controller/add_pics_controller.dart';
import '../models/add_pics_item_model.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddPicsItemWidget extends StatelessWidget {
  AddPicsItemWidget(this.addPicsItemModelObj, {
    Key? key,
    this.onTapImg,
  }) : super(
    key: key,
  );

  AddPicsItemModel addPicsItemModelObj;

  // var controller = Get.find<AddPicsController>();

  VoidCallback? onTapImg;


  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddPicsController>(builder: (controller) {
      return GestureDetector(
        onTap: () async {
         controller.selectPic();
         controller.update();
        },
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: getVerticalSize(141,),
              width: getHorizontalSize(122,),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: controller.photo==null?CustomImageView(
                svgPath: ImageConstant.imgLocation,
                height: getSize(
                  32,
                ),
                width: getSize(
                  32,
                ),
                alignment: Alignment.center,
              ):Image.file(File(controller.photo!.path),fit: BoxFit.cover,height: 143.h),
            ),
            controller.photo==null?SizedBox():Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:  EdgeInsets.all(8),
                  child: Icon(Icons.close,size: 20,color: Colors.white,),
                )),
            if (controller.photo==null) Container(
              height: getSize(24),
              width: getSize(24),
              decoration: BoxDecoration(
                color: Color(0xFFAA6BE9),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(Icons.add,color: Colors.white,size: 15.h,),
            ) else SizedBox(),

          ],
        ),
      );
    },init: AddPicsController(),);
  }
}

// CustomImageView(
// svgPath: ImageConstant.imgLocation,
// height: getSize(
// 32,
// ),
// width: getSize(
// 32,
// ),
// alignment: Alignment.center,
// ),



//
// CustomIconButton
// (
// height: 24,
// width: 24,
// padding: getPadding(
// all: 4,
// ),
// alignment: Alignment.bottomRight,
// child: CustomImageView(
// svgPath: ImageConstant.
// imgPlus
// ,
// )
// ,
// )
// ,