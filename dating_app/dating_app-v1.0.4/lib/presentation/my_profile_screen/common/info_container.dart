import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';


class InfoContainer extends StatelessWidget {
  final String? title;
  final String? infoData;

  const InfoContainer({super.key, this.title, this.infoData});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: getPadding(bottom: getSize(16)),
      child: Container(
          padding: getPadding(
              all: getSize(16)),
          decoration: AppDecoration.fill8.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:
              CrossAxisAlignment.start,
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
                Text(title??"Name".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles
                        .bodyMediumGray60014),
                Padding(
                    padding:
                    getPadding(top: getSize(6)),
                    child: Text(infoData??"Ronald richards".tr,
                        textAlign: TextAlign.left,
                        style:
                        theme.textTheme.bodyLarge))
              ]
          )
      ),
    );
  }
}
