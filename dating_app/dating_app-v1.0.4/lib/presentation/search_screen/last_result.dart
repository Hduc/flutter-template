import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/custom_image_view.dart';

class LastResult extends StatelessWidget {
  final String? search;
  const LastResult({super.key, this.search});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(bottom: 10.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                search??"Jenny wilson",style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w400,
                fontSize: 17,

              ),
              ),
              CustomImageView(
                svgPath:ImageConstant.imgClose,
                height: getSize(
                  20.h,),
                width: getSize(
                  24.h,),
                color:Color(0xFF7C7C7C),

              ),
            ],
          ),
          Divider(
            color:Color(0xFF7C7C7C),
          )
        ],
      ),
    );
  }
}
