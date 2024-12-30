import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/gender_screen/select_card.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'controller/gender_controller.dart';

class GenderScreen extends GetWidget<GenderController> {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            backgroundColor: Colors.white,
            shape:  RoundedRectangleBorder(borderRadius:
            BorderRadius.all(Radius.circular(16))),
            insetPadding: getPadding(left: getSize(27),right: getSize(27)),
            title: Padding(
              padding: getPadding(left: getSize(40),right: getSize(40)),
              child: Text('Are you sure you want to Exit?',style: TextStyle(
                color: Colors.black,
                fontSize: getFontSize(18),
                fontWeight: FontWeight.w600,
              ),),
            ),

            actions: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: getPadding(left: getSize(30),bottom: getSize(20)),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xFFAA6BE9),
                                width: getSize(1.5),
                              )
                          ),
                          child: Padding(
                            padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                            child: Center(
                              child: Text(
                                'No',style: TextStyle(
                                color: Color(0xFFAA6BE9),
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w700,
                              ),

                                textAlign: TextAlign.center,

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getSize(20),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()  {
                        controller.onExit();
                        controller.update();

                      },
                      child: Padding(
                        padding: getPadding(right: getSize(30),bottom: getSize(20)),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFAA6BE9),
                          ),
                          child: Padding(
                            padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                            child: Center(
                              child: Text(
                                'Yes',style: TextStyle(
                                color: Colors.white,
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w700,
                              ),

                                textAlign: TextAlign.center,

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        );
        return Future(() => false);


      },
      child: Scaffold(
          backgroundColor:Colors.white,
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(top: getSize(65),bottom: getSize(10),right: getSize(16),left: getSize(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "Step 1/7".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineMedium,

                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Color(0xFFE7E7E7),
                  thickness: getSize(1.5),
                ),
                Padding(
                    padding: getPadding(left: getSize(16), top: getSize(24)),
                    child: Text("msg_what_s_your_gender".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.headlineSmall)),
              SizedBox(
                height: getSize(24),
              ),
              Expanded(
                child: GetBuilder<GenderController>(builder: (controller) {
                  return   Container(
                    height: getSize(177),
                    width: double.infinity,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Adjust as per your requirement
                          crossAxisSpacing:getSize(20),
                          mainAxisSpacing: 0,
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
              })),
    );
  }
  onTapNext() {
    Get.toNamed(
      AppRoutes.orientationScreen,
    );
  }
}
