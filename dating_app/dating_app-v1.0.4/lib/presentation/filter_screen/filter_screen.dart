import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/filter_screen/widgets/intrest_item_widget.dart';
import 'package:dating_app/presentation/filter_screen/widgets/intrestedin_item_widget.dart';
import 'package:dating_app/presentation/filter_screen/widgets/sunsigns_item_widget.dart';
import 'package:dating_app/presentation/intro_screen/controller/intro_controller.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import '../../data/pref_data.dart';
import 'controller/filter_controller.dart';
import 'custom_slider.dart';
import 'models/intrest_item_model.dart';
import 'models/intrestedin_item_model.dart';
import 'models/sunsigns_item_model.dart';

// ignore: must_be_immutable
class FilterScreen extends GetWidget<FilterController> {
  FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    IntroController introController = Get.put(IntroController());

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        if (PrefData.currentIndex == 0) {
          {
            PrefData.currentIndex = 0;
            // Get.toNamed(AppRoutes.locationAccessContainer1Screen);
            Get.back();
            controller.update();
          }
        } else {
          PrefData.currentIndex = 0;
          controller.update();
        }
        return Future(() => false);
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: getPadding(top: getSize(40), bottom: getSize(10)),
                    decoration: AppDecoration.outline3,
                    child: Padding(
                        padding: getPadding(top: getSize(5), left: getSize(16), right: getSize(16)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    Get.toNamed(
                                      AppRoutes.locationAccessContainer1Screen,
                                    );
                                    controller.update();
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    size: getSize(18),
                                    color: Colors.black,
                                  )),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text("Filter".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineMedium),
                            ),
                          ],
                        ))),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: getSize(16), top: getSize(24)),
                        child: Text(
                          "Distance",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: getFontSize(18),
                            color: Colors.black,
                          ),
                        ),
                      ),
                      GetBuilder<FilterController>(
                        builder: (controller) {
                          return Column(
                            children: [
                              DynamicRangeSlider(
                                  currentRangeValues:
                                      controller.distanceRangeValues,
                                  min: controller.min,
                                  max: controller.max,
                                  onChanged: (RangeValues values) {
                                    controller.onChanged(values);
                                    controller.currentDistanceValue = values;
                                    print(values);
                                  },
                                  onChangeEnd: (RangeValues values) {
                                    controller.onChangeEnd(values);
                                  }),
                              Padding(
                                padding: EdgeInsets.only(left: getSize(16), right: getSize(16)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(' ${controller.min} km',
                                        style: TextStyle(
                                          fontSize: getFontSize(17),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF7C7C7C),
                                        )),
                                    Text('${controller.max} km',
                                        style: TextStyle(
                                          fontSize: getFontSize(17),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF7C7C7C),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                        init: FilterController(),
                      ),
                      Padding(
                          padding: getPadding(top: getSize(24), left: getSize(16)),
                          child: Text("lbl_age_range".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumBlack900)),
                      GetBuilder<FilterController>(
                        builder: (controller) {
                          return Column(
                            children: [
                              DynamicRangeSlider(
                                  currentRangeValues: controller.ageRangeValues,
                                  min: controller.minAge,
                                  max: controller.maxAge,
                                  onChanged: (RangeValues values) {
                                    controller.onChangedAge(values);
                                    // controller.currentDistanceValue = values;
                                    print(values);
                                  },
                                  onChangeEnd: (RangeValues values) {
                                    controller.onChangeEndAge(values);
                                  }),
                              Padding(
                                padding: EdgeInsets.only(left: getSize(10), right: getSize(16)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('18 Years',
                                        style: TextStyle(
                                          fontSize: getFontSize(17),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF7C7C7C),
                                        )),
                                    Text('30 Years',
                                        style: TextStyle(
                                          fontSize: getFontSize(17),
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF7C7C7C),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                        init: FilterController(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getSize(16), top: getSize(24)),
                        child: Text(
                          "Interested in",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: getFontSize(18),
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getSize(16), right: getSize(16), top: getSize(8)),
                        child: Obx(() => Wrap(
                            runSpacing: getSize(5),
                            spacing: getSize(15),
                            children: List<Widget>.generate(
                                controller.filterModelObj.value
                                    .intrestedinItemList.value.length, (index) {
                              IntrestedinItemModel model = controller
                                  .filterModelObj
                                  .value
                                  .intrestedinItemList
                                  .value[index];
                              return IntrestedinItemWidget(
                                model,
                                interest: genderIn[index],
                              );
                            }))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: getSize(16), top: getSize(5), right: getSize(16)),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Interested",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: getFontSize(18),
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(
                                  AppRoutes.intrestScreen,
                                );
                              },
                              child: Text(
                                "View all",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: getFontSize(16),
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: getSize(16)),
                        child: Obx(() => Wrap(
                            runSpacing: getSize(5),
                            spacing: getSize(15),
                            children: List<Widget>.generate(12, (index) {
                              IntrestItemModel model = controller.filterModelObj
                                  .value.intrestItemList.value[index];
                              return IntrestItemWidget(
                                model,
                                interest:
                                    introController.categoriesList[index].text,
                              );
                            }))),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: getSize(16), top: getSize(24), right: getSize(16),),
                        child: Text(
                          "Sun signs",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: getFontSize(18),
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: getSize(16)),
                        child: Obx(() => Wrap(
                            spacing:getSize(15),
                            children: List<Widget>.generate(
                                controller.filterModelObj.value.sunsignsItemList
                                    .value.length, (index) {
                              SunsignsItemModel model = controller
                                  .filterModelObj
                                  .value
                                  .sunsignsItemList
                                  .value[index];
                              return SunsignsItemWidget(
                                model,
                                sunSigns: sunSign[index],
                              );
                            }))),
                      )
                    ],
                  ),
                )
              ]),
          bottomNavigationBar: CustomElevatedButton(
              onTap: () {
                Get.toNamed(
                  AppRoutes.locationAccessContainer1Screen,
                );
                controller.update();
                print('m----------->');
              },
              text: "lbl_apply_filter".tr,
              margin: getMargin(left: getSize(16), right: getSize(6), bottom: getSize(40)),
              buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size(double.maxFinite, getVerticalSize(54)))),
              buttonTextStyle: theme.textTheme.titleMedium!)),
    );
  }

  onTapArrowleft12() {
    Get.back();
  }

  List<String> genderIn = [
    'Male',
    'Female',
  ];
  List<String> sunSign = [
    'Gemini',
    'Taurus',
    'Aquarius',
    'Libra',
    'Capricorn',
    'Scorpio',
    'Aries',
    'Pisces',
  ];
}
