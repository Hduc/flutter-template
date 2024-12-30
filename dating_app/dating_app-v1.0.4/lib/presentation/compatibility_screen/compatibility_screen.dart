import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import '../../core/utils/appbar.dart';
import '../compatibility_screen/widgets/compatibility_item_widget.dart';
import 'controller/compatibility_controller.dart';

class CompatibilityScreen extends GetWidget<CompatibilityController> {
  const CompatibilityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.white,

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBarText(
                title: 'Step 4/7',
              ),
              Divider(
                color: Color(0xFFE7E7E7),
                thickness: getSize(1.5),
              ),
              Padding(
                padding:  EdgeInsets.only(left: getSize(16),right: getSize(16),top: getSize(24),bottom: getSize(21)),
                child: Text("msg_right_now_i_m_looking".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headlineSmall),
              ),
              Expanded(
                  child: GetBuilder<CompatibilityController>(builder: (controller) {

                    return GridView.builder(
                      padding: EdgeInsets.symmetric(horizontal: getSize(16)),
                        shrinkWrap: true,
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getSize(140),
                            crossAxisCount: 3,
                            mainAxisSpacing:
                            getSize(24),
                            crossAxisSpacing:
                            getSize(16)),
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.compatibilityList.length,

                        itemBuilder: (context, index) {


                          return GestureDetector(
                            onTap: () {
                              controller.sizeIndex.value =index;
                              controller.productPressed.value = !controller.productPressed.value;
                              controller.update();
                            },
                            child: CompatibilityItemWidget(
                              image: controller.compatibilityList[index].image,
                              text: controller.compatibilityList[index].text,
                              isSelect:  controller.sizeIndex.value ==index,
                            ),
                          );
                        });
                  },init: CompatibilityController(),)
              )
            ],
        ),


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


  onTapArrowleft6() {
    Get.back();
  }
  onTapNext() {
    Get.toNamed(
      AppRoutes.introScreen,
    );
  }
}
