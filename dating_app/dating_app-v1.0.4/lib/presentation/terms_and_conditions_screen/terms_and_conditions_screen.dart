import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';
import 'package:flutter/material.dart';
import 'controller/terms_and_conditions_controller.dart';

class TermsAndConditionsScreen extends GetWidget<TermsAndConditionsController> {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor:Colors.white,

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          CustomAppBarText(
            title: 'Terms and  conditions',
          ),
              Divider(
                color: Color(0xFFE7E7E7),
                thickness: getSize(1.5),
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: getPadding(left: getSize(16),right: getSize(16),top: getSize(20)),
                 children: [
                   Text("msg_1_types_of_data".tr,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: CustomTextStyles.titleMediumBlack900),
                   Padding(
                     padding: getPadding(top: getSize(8)),
                     child: Text("msg_duis_tristique_diam".tr,
                         maxLines: 8,
                         overflow: TextOverflow.ellipsis,
                         textAlign: TextAlign.left,
                         style: theme.textTheme.bodyLarge),
                   ),

                   Padding(
                       padding: getPadding(top: getSize(24)),
                       child: Text("msg_2_use_of_your_personal".tr,
                           overflow: TextOverflow.ellipsis,
                           textAlign: TextAlign.left,
                           style: theme.textTheme.titleLarge)),
                   Padding(
                     padding: getPadding(top: getSize(10)),
                     child: Text("msg_sed_sollicitudin".tr,
                         maxLines: 8,
                         overflow: TextOverflow.ellipsis,
                         textAlign: TextAlign.left,
                         style: theme.textTheme.bodyLarge),
                   ),

                   Padding(
                       padding: getPadding(top: getSize(40)),
                       child: Text("msg_3_disclosure_of".tr,
                           overflow: TextOverflow.ellipsis,
                           textAlign: TextAlign.left,
                           style: theme.textTheme.titleLarge)),
                   Padding(
                     padding: getPadding(top: getSize(10)),
                     child: RichText(
                         text: TextSpan(children: [
                           TextSpan(
                               text: "msg_sed_sollicitudin3".tr,
                               style: theme.textTheme.bodyLarge),
                           TextSpan(
                               text: "msg_maecenas_egestas".tr,
                               style: theme.textTheme.bodyLarge)
                         ]),
                         textAlign: TextAlign.left),
                   )
                 ],

                ),
              )
            ]
        )
    );
  }


  onTapArrowleft29() {
    Get.back();
  }
}
