import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/history_screen/models/history_model.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_image.dart';
import 'package:ai_app_flutter/widgets/app_bar/appbar_title.dart';
import 'package:ai_app_flutter/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../core/custom_slider/src/action_pane_motions.dart';
import '../../core/custom_slider/src/actions.dart';
import '../../core/custom_slider/src/slidable.dart';
import '../../widgets/text_form_field.dart';
import 'controller/history_controller.dart';

// ignore_for_file: must_be_immutable
class HistoryScreen extends StatelessWidget {
  HistoryController controller = Get.put(HistoryController());

  void doNothing(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HistoryController>(
      init: HistoryController(),
      builder: (controller) => Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
            height: getVerticalSize(
              65,
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_history".tr,
            ),
            actions: [
              controller.isSearch == true
                  ? SizedBox()
                  : AppbarImage(
                      onTap: () {
                        // controller.isSearch.value = true;
                        controller.change(true);
                      },
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(
                        left: 20,
                        top: 21,
                        right: 20,
                        bottom: 20,
                      ),
                    ),
            ],
            styleType: Style.bgFillWhiteA700,
          ),
          body: SafeArea(
            child: Column(
              children: [
                controller.isSearch == true
                    ? Padding(
                        padding: getPadding(left: 20, right: 20, top: 8),
                        child: TextFormFieldWidget(
                          controller: controller.searchController,
                          hintText: "Search",
                          textInputAction: TextInputAction.done,
                          prefixConstraints: BoxConstraints(
                              maxHeight: 48, maxWidth: 56, minHeight: 48),
                          prefix: CustomImageView(
                            margin: getMargin(right: 16, left: 16),
                            svgPath: Constant.imagePath + "search.svg",
                            height: getVerticalSize(24),
                            width: getVerticalSize(24),
                          ),
                          variant: TextFormFieldVariant.OutlineBlack900,
                          onChanged: (value) {
                            controller.changeSearch(true);
                          },
                        ),
                      )
                    : SizedBox(),
                controller.search == true
                    ? Expanded(
                        child: ListView(
                        padding: getPadding(top: 24, right: 20, left: 20),
                        primary: true,
                        shrinkWrap: false,
                        children: [
                          Text("Previous search",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline),
                          SizedBox(
                            height: getVerticalSize(16),
                          ),
                          ListView.separated(
                              primary: false,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgSearchGray600,
                                      height: getVerticalSize(20),
                                      width: getVerticalSize(20),
                                    ),
                                    SizedBox(
                                      width: getHorizontalSize(16),
                                    ),
                                    Text(controller.searchList[index],
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray600),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClose,
                                      height: getVerticalSize(20),
                                      width: getVerticalSize(20),
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(24),
                                );
                              },
                              itemCount: controller.searchList.length)
                        ],
                      ))
                    : Expanded(
                        child: ListView.separated(
                            padding: getPadding(top: 24),
                            primary: true,
                            shrinkWrap: false,
                            itemBuilder: (context, index) {
                              HistoryModel historyModel =
                                  controller.historyModelList[index];
                              return Slidable(
                                endActionPane: ActionPane(
                                  extentRatio: 0.20,
                                  motion: ScrollMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (context) {
                                        print("sdsd");
                                      },
                                      backgroundColor: Color(0xFFE84141),
                                      foregroundColor: Colors.white,
                                      flex: 1,
                                      icon: Constant.imagePath + "delete.svg",
                                    ),
                                  ],
                                ),
                                child: Container(
                                  margin: getMargin(left: 20, right: 20),
                                  padding: getPadding(all: 16),
                                  decoration:
                                      AppDecoration.fillGray100.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          historyModel.title,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtBody.copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "lbl_9_41_pm".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtFootnote,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(16),
                              );
                            },
                            itemCount: controller.historyModelList.length),
                      ),
              ],
            ),
          )),
    );
  }
}
