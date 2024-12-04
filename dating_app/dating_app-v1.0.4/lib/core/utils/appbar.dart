import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';


class CustomAppBarText extends StatelessWidget {
  final String? title;
  const CustomAppBarText({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: getPadding(top: getSize(65),bottom: getSize(10),right: getSize(16),left: getSize(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                // ignore: unnecessary_statements
                Get.back();
              },
              child: CustomImageView(
                svgPath: ImageConstant.imgArrowleft ,
                height: getSize(24,),
                width: getSize(24,),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              title??"Step 2/7 ".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineMedium,
            ),
          )
        ],
      ),
    );
  }
}
