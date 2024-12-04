import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';
import 'package:dating_app/presentation/reset_password_screen/select_orientation.dart';

import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';


import 'controller/orientation_controller.dart';

class OrientationScreen extends GetWidget<OrientationController> {
  const OrientationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(

        backgroundColor: Colors.white,

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
            CustomAppBarText(
              title: 'Step 2/7',
            ),
              Divider(
                color: Color(0xFFE7E7E7),
                thickness: getSize(1.5),
              ),
              Padding(
                padding:  EdgeInsets.only(left: getSize(16),right: getSize(16),top: getSize(10)),
                child: Text("msg_your_sexual_orientation".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headlineSmall),
              ),
              Container(
                child: Padding(
                  padding:  EdgeInsets.only(left: getSize(16),right:getSize(16),top: getSize(24)),
                  child: Column(
                    children: [
                      Row(
                         children: [
                          Expanded(
                            child: Text('Select Up to 3',style: TextStyle(fontSize:16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF7C7C7C)),),
                          ),

                         ],
                      ),
                      Divider(
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
             GetBuilder<OrientationController>(builder: (controller) {
               return  Expanded(
                 child: ListView.separated(
                   padding: EdgeInsets.only(top: getSize(16)),
                   physics: BouncingScrollPhysics(),
                   itemCount: controller.orientationType.length,
                   separatorBuilder: (context, index) {
                     return SizedBox(
                       height: getSize(16)
                     );
                   },
                   itemBuilder: (context, index) {
                     return GestureDetector(
                       onTap: () {
                         controller.sizeIndex.value =index;
                         controller.productPressed.value = !controller.productPressed.value;
                         controller.update();
                       },
                       child: SelectOrientation(
                           text: controller.orientationType[index].orientation,
                           isSelect: controller.sizeIndex.value ==index ),
                     );
                   },

                 ),
               );
             },init: OrientationController(),)

            ]),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_next".tr,
            margin: getMargin(left: getSize(16), right: getSize(16), bottom: getSize(40)),
            buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getVerticalSize(54)))),
            buttonTextStyle: theme.textTheme.titleMedium!,
            onTap: () {
              onTapNext();
            }));
  }


  onTapArrowleft4() {
    Get.back();
  }


  onTapNext() {
    Get.toNamed(
      AppRoutes.interestedScreen,
    );
  }
}
