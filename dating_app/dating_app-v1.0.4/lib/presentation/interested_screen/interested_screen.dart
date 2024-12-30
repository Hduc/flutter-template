import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/appbar.dart';
import '../gender_screen/controller/gender_controller.dart';
import '../gender_screen/select_card.dart';
import 'controller/interested_controller.dart';

class InterestedScreen extends GetWidget<InterestedController> {
  const InterestedScreen({Key? key}) : super(key: key);

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
                title: 'Step 3/7',
              ),
              Divider(
                color: Color(0xFFE7E7E7),
                thickness: getSize(1.5),
              ),

              Padding(
                padding:  EdgeInsets.only(top: getSize(24),left: getSize(16),right: getSize(16)),
                child: Text("msg_who_are_you_interested".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: theme.textTheme.headlineSmall),
              ),
             SizedBox(
               height: getSize(24),
             ),
             Expanded(
               child: GetBuilder<GenderController>(builder: (controller) {
                return   Container(
                 // height: 177.h,
                 width: double.infinity,
                 child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Adjust as per your requirement
                      crossAxisSpacing:getSize(20),
                      mainAxisSpacing: 0.h,
                      mainAxisExtent: getSize(177)
                  ),
                  itemCount: 2,
                  padding: EdgeInsets.symmetric(horizontal: getSize(16)),
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                   return InkWell(
                    onTap: () {
                     controller.select(index);
                     controller.update();

                    },
                    child: SelectCard(
                     genderImg: controller.genderImg[index].img,
                     isSelect:controller.sizeIndex.value ==index, ),
                   );
                  },
                 ),
                );
               },init: GenderController(),),
             )
            ],
        ),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_next".tr,
            margin: getMargin(left: getSize(16), right: getSize(16), bottom: getSize(40)),
            buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getSize(54)))),
            buttonTextStyle: theme.textTheme.titleMedium!,
            onTap: () {
              onTapNext();
            }));
  }



  onTapNext() {
    Get.toNamed(
      AppRoutes.compatibilityScreen,
    );
  }
}
