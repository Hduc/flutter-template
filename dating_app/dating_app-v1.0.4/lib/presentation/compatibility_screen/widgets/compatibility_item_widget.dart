import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CompatibilityItemWidget extends StatelessWidget {
  final String? image;
  final String? text;
  final bool isSelect;



  CompatibilityItemWidget(
    {Key? key, this.image, this.text, required this.isSelect,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Color(0xFFF8F8F8),
        border: Border.all(
          color: isSelect?Color(0xFFAA6BE9):Color(0xFFF8F8F8),
          width: 1.5.h
        )
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: image??ImageConstant.com1,
            height:getSize(34),
            width:getSize(34),
            alignment: Alignment.center,

          ),
          Padding(
            padding:  EdgeInsets.only(top: 16.h,left: 16,right: 16.h),
            child: Text(
                  text??'Long-term partner',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
          ),

        ],
      ),
    );
  }
}
