import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';

class OptionContainer extends StatelessWidget {
  final String? img;
  final String? option;
  const OptionContainer({super.key, this.img, this.option});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:getPadding(left: 16,right: 16,top: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: getPadding(left: 16,top: 16.5,bottom: 15.5,right: 17),
          child: Row(
            children: [
              Padding(
                padding: getPadding(right: 8),
                child: CustomImageView(
                  svgPath: img??ImageConstant.imgIcUser,
                ),
              ),
              Expanded(child: Text(option??'My profile',style:theme.textTheme.bodyLarge! ,)),
              CustomImageView(
                svgPath: ImageConstant.imgIcArrow,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
