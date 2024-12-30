import '../history_activities_page/widgets/gridtotaldeposit_item_widget.dart';
import '../history_activities_page/widgets/list5_item_widget.dart';
import 'controller/history_activities_controller.dart';
import 'models/gridtotaldeposit_item_model.dart';
import 'models/history_activities_model.dart';
import 'models/list5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HistoryActivitiesPage extends StatelessWidget {
  HistoryActivitiesController controller =
      Get.put(HistoryActivitiesController(HistoryActivitiesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Container(
        width: size.width,
        child: Padding(
          padding: getPadding(top: 36),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(left: 24, right: 24),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: ColorConstant.darkGrey),
                          child: Padding(
                            padding: getPadding(all: 16),
                            child: Column(
                              children: [
                                Text(
                                  "lbl_total_deposit".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12Gray800
                                      .copyWith(
                                    height: getVerticalSize(
                                      0.99,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: getVerticalSize(8),
                                ),
                                Text(
                                  "lbl_0_18732".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterBold16Black900.copyWith(
                                    height: getVerticalSize(
                                      1.27,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                        SizedBox(
                          width: getHorizontalSize(8),
                        ),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: ColorConstant.lightGray),
                          child: Padding(
                            padding: getPadding(all: 16),
                            child: Column(
                              children: [
                                Text(
                                  "lbl_total_deposit".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12Gray800
                                      .copyWith(
                                    height: getVerticalSize(
                                      0.99,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: getVerticalSize(8),
                                ),
                                Text(
                                  "lbl_0_18732".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterBold16Black900.copyWith(
                                    height: getVerticalSize(
                                      1.27,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(8),
                  ),
                  Padding(
                    padding: getPadding(left: 24, right: 24),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: ColorConstant.lightGray),
                          child: Padding(
                            padding: getPadding(all: 16),
                            child: Column(
                              children: [
                                Text(
                                  "lbl_total_deposit".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12Gray800
                                      .copyWith(
                                    height: getVerticalSize(
                                      0.99,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: getVerticalSize(8),
                                ),
                                Text(
                                  "lbl_0_18732".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterBold16Black900.copyWith(
                                    height: getVerticalSize(
                                      1.27,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                        SizedBox(
                          width: getHorizontalSize(8),
                        ),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: ColorConstant.darkGrey),
                          child: Padding(
                            padding: getPadding(all: 16),
                            child: Column(
                              children: [
                                Text(
                                  "lbl_total_deposit".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12Gray800
                                      .copyWith(
                                    height: getVerticalSize(
                                      0.99,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: getVerticalSize(8),
                                ),
                                Text(
                                  "lbl_0_18732".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterBold16Black900.copyWith(
                                    height: getVerticalSize(
                                      1.27,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL32,
                        color: ColorConstant.colorF5f5),
                    width: size.width,
                    margin: getMargin(
                      top: 24,
                    ),
                    padding: getPadding(
                      left: 24,
                      top: 26,
                      right: 24,
                      bottom: 26,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 0,
                          ),
                          child: Text(
                            "msg_january_02_2023".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold14Gray800.copyWith(
                              height: getVerticalSize(
                                1.19,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: getVerticalSize(16),
                        ),
                        Obx(
                          () => ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  8.00,
                                ),
                              );
                            },
                            itemCount: controller.historyActivitiesModelObj
                                .value.list5ItemList.length,
                            itemBuilder: (context, index) {
                              List5ItemModel model = controller
                                  .historyActivitiesModelObj
                                  .value
                                  .list5ItemList[index];
                              return List5ItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ],
                    ).paddingOnly(bottom: 0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
