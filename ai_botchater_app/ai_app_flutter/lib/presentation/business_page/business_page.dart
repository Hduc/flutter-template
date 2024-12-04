import 'package:ai_app_flutter/presentation/business_page/models/writing_model.dart';

import 'controller/business_controller.dart';
import 'models/business_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BusinessPage extends StatelessWidget {
  BusinessController controller = Get.put(BusinessController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: getPadding(
                top: 14,
                bottom: 23,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Text(
                "lbl_ai_assistants".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtAirbnbCerealWBd24,
              ),
            ),
            Container(
              height: getVerticalSize(40),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: getHorizontalSize(16),
                  );
                },
                padding: getPadding(left: 20, right: 20),
                primary: true,
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: controller.businessModelList.length,
                itemBuilder: (context, index) {
                  BusinessModel businessModel =
                      controller.businessModelList[index];
                  return Obx(
                    () => GestureDetector(
                      onTap: () {
                        controller.selectItem.value = index;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: controller.selectItem.value == index
                              ? ColorConstant.black900
                              : ColorConstant.whiteA700,
                          borderRadius:
                              BorderRadius.circular(getVerticalSize(16)),
                          border: Border.all(
                            color: controller.selectItem.value == index
                                ? ColorConstant.black900
                                : ColorConstant.gray400,
                            width: 1,
                          ),
                        ),
                        alignment: Alignment.center,
                        padding: getPadding(left: 16, right: 13),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath:
                                  Constant.imagePath + businessModel.image,
                              height: getVerticalSize(24),
                              width: getVerticalSize(24),
                            ),
                            SizedBox(
                              width: getHorizontalSize(8),
                            ),
                            Text(
                              businessModel.name,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtBodyGray700.copyWith(
                                  color: controller.selectItem.value == index
                                      ? ColorConstant.whiteA700
                                      : ColorConstant.black900,
                                  fontWeight:
                                      controller.selectItem.value == index
                                          ? FontWeight.w700
                                          : FontWeight.w500,
                                  fontFamily:
                                      controller.selectItem.value == index
                                          ? 'AirbnbCereal_W_Bd'
                                          : 'AirbnbCereal_W_Md'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: getVerticalSize(32),
            ),
            Obx(
              () => controller.selectItem.value == 0
                  ? Expanded(
                      child: ListView(
                        primary: true,
                        shrinkWrap: false,
                        padding: getPadding(bottom: 24),
                        children: [
                          Padding(
                            padding: getPadding(right: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Writing",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAirbnbCerealWXBd20),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectItem.value = 1;
                                  },
                                  child: Text("View all",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtAirbnbCerealWLt14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(16),
                          ),
                          GridView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: 2,
                            padding: getPadding(
                              left: 20,
                              right: 20,
                            ),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: getVerticalSize(171),
                                    mainAxisSpacing: getVerticalSize(16),
                                    crossAxisSpacing: getVerticalSize(16)),
                            itemBuilder: (context, index) {
                              WritingModel writingModel =
                                  controller.writingList[index];
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(
                                    writingModel.route,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: writingModel.color,
                                    borderRadius: BorderRadius.circular(
                                      getVerticalSize(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath: Constant.imagePath +
                                              writingModel.image,
                                          height: getVerticalSize(86),
                                          width: getVerticalSize(86),
                                          margin: getMarginOrPadding(
                                            top: 17,
                                          )),
                                      Container(
                                        margin: getMarginOrPadding(
                                            left: 4, right: 4, bottom: 4),
                                        width: double.infinity,
                                        padding: getPadding(
                                          top: 12,
                                          bottom: 12,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                            getVerticalSize(16),
                                          ),
                                        ),
                                        child: Text(writingModel.name,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeadline),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: getVerticalSize(24),
                          ),
                          Padding(
                            padding: getPadding(right: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Creative",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAirbnbCerealWXBd20),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectItem.value = 2;
                                  },
                                  child: Text("View all",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtAirbnbCerealWLt14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(16),
                          ),
                          GridView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: 2,
                            padding: getPadding(
                              left: 20,
                              right: 20,
                            ),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: getVerticalSize(171),
                                    mainAxisSpacing: getVerticalSize(16),
                                    crossAxisSpacing: getVerticalSize(16)),
                            itemBuilder: (context, index) {
                              WritingModel writingModel =
                                  controller.creativeList[index];
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(
                                    writingModel.route,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: writingModel.color,
                                    borderRadius: BorderRadius.circular(
                                      getVerticalSize(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath: Constant.imagePath +
                                              writingModel.image,
                                          height: getVerticalSize(86),
                                          width: getVerticalSize(86),
                                          margin: getMarginOrPadding(
                                            top: 17,
                                          )),
                                      Container(
                                        margin: getMarginOrPadding(
                                            left: 4, right: 4, bottom: 4),
                                        width: double.infinity,
                                        padding: getPadding(
                                          top: 12,
                                          bottom: 12,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                            getVerticalSize(16),
                                          ),
                                        ),
                                        child: Text(writingModel.name,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeadline),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: getVerticalSize(24),
                          ),
                          Padding(
                            padding: getPadding(right: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Business",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAirbnbCerealWXBd20),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectItem.value = 3;
                                  },
                                  child: Text("View all",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtAirbnbCerealWLt14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(16),
                          ),
                          GridView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: 2,
                            padding: getPadding(
                              left: 20,
                              right: 20,
                            ),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: getVerticalSize(171),
                                    mainAxisSpacing: getVerticalSize(16),
                                    crossAxisSpacing: getVerticalSize(16)),
                            itemBuilder: (context, index) {
                              WritingModel writingModel =
                                  controller.businessList[index];
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(
                                    writingModel.route,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: writingModel.color,
                                    borderRadius: BorderRadius.circular(
                                      getVerticalSize(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath: Constant.imagePath +
                                              writingModel.image,
                                          height: getVerticalSize(86),
                                          width: getVerticalSize(86),
                                          margin: getMarginOrPadding(
                                            top: 17,
                                          )),
                                      Container(
                                        margin: getMarginOrPadding(
                                            left: 4, right: 4, bottom: 4),
                                        width: double.infinity,
                                        padding: getPadding(
                                          top: 12,
                                          bottom: 12,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                            getVerticalSize(16),
                                          ),
                                        ),
                                        child: Text(writingModel.name,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeadline),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: getVerticalSize(24),
                          ),
                          Padding(
                            padding: getPadding(right: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Developer",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAirbnbCerealWXBd20),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectItem.value = 5;
                                  },
                                  child: Text("View all",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtAirbnbCerealWLt14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(16),
                          ),
                          GridView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: 2,
                            padding: getPadding(
                              left: 20,
                              right: 20,
                            ),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: getVerticalSize(171),
                                    mainAxisSpacing: getVerticalSize(16),
                                    crossAxisSpacing: getVerticalSize(16)),
                            itemBuilder: (context, index) {
                              WritingModel writingModel =
                                  controller.developerList[index];
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(
                                    writingModel.route,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: writingModel.color,
                                    borderRadius: BorderRadius.circular(
                                      getVerticalSize(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath: Constant.imagePath +
                                              writingModel.image,
                                          height: getVerticalSize(86),
                                          width: getVerticalSize(86),
                                          margin: getMarginOrPadding(
                                            top: 17,
                                          )),
                                      Container(
                                        margin: getMarginOrPadding(
                                            left: 4, right: 4, bottom: 4),
                                        width: double.infinity,
                                        padding: getPadding(
                                          top: 12,
                                          bottom: 12,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                            getVerticalSize(16),
                                          ),
                                        ),
                                        child: Text(writingModel.name,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeadline),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: getVerticalSize(24),
                          ),
                          Padding(
                            padding: getPadding(right: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Personal",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAirbnbCerealWXBd20),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectItem.value = 6;
                                  },
                                  child: Text("View all",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtAirbnbCerealWLt14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(16),
                          ),
                          GridView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: 2,
                            padding: getPadding(
                              left: 20,
                              right: 20,
                            ),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: getVerticalSize(171),
                                    mainAxisSpacing: getVerticalSize(16),
                                    crossAxisSpacing: getVerticalSize(16)),
                            itemBuilder: (context, index) {
                              WritingModel writingModel =
                                  controller.personalList[index];
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(
                                    writingModel.route,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: writingModel.color,
                                    borderRadius: BorderRadius.circular(
                                      getVerticalSize(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath: Constant.imagePath +
                                              writingModel.image,
                                          height: getVerticalSize(86),
                                          width: getVerticalSize(86),
                                          margin: getMarginOrPadding(
                                            top: 17,
                                          )),
                                      Container(
                                        margin: getMarginOrPadding(
                                            left: 4, right: 4, bottom: 4),
                                        width: double.infinity,
                                        padding: getPadding(
                                          top: 12,
                                          bottom: 12,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                            getVerticalSize(16),
                                          ),
                                        ),
                                        child: Text(writingModel.name,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeadline),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: getVerticalSize(24),
                          ),
                          Padding(
                            padding: getPadding(right: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Other",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtAirbnbCerealWXBd20),
                                GestureDetector(
                                  onTap: () {
                                    controller.selectItem.value = 7;
                                  },
                                  child: Text("View all",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtAirbnbCerealWLt14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(16),
                          ),
                          GridView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: 2,
                            padding: getPadding(
                              left: 20,
                              right: 20,
                            ),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: getVerticalSize(171),
                                    mainAxisSpacing: getVerticalSize(16),
                                    crossAxisSpacing: getVerticalSize(16)),
                            itemBuilder: (context, index) {
                              WritingModel writingModel =
                                  controller.othersList[index];
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(
                                    writingModel.route,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: writingModel.color,
                                    borderRadius: BorderRadius.circular(
                                      getVerticalSize(16),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath: Constant.imagePath +
                                              writingModel.image,
                                          height: getVerticalSize(86),
                                          width: getVerticalSize(86),
                                          margin: getMarginOrPadding(
                                            top: 17,
                                          )),
                                      Container(
                                        margin: getMarginOrPadding(
                                            left: 4, right: 4, bottom: 4),
                                        width: double.infinity,
                                        padding: getPadding(
                                          top: 12,
                                          bottom: 12,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                            getVerticalSize(16),
                                          ),
                                        ),
                                        child: Text(writingModel.name,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtHeadline),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: Constant.getList(
                              controller.selectItem.value, controller)
                          .length,
                      padding: getPadding(
                        left: 20,
                        right: 20,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: getVerticalSize(171),
                          mainAxisSpacing: getVerticalSize(16),
                          crossAxisSpacing: getVerticalSize(16)),
                      itemBuilder: (context, index) {
                        WritingModel writingModel = Constant.getList(
                            controller.selectItem.value, controller)[index];
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(
                              writingModel.route,
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: writingModel.color,
                              borderRadius: BorderRadius.circular(
                                getVerticalSize(16),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        Constant.imagePath + writingModel.image,
                                    height: getVerticalSize(86),
                                    width: getVerticalSize(86),
                                    margin: getMarginOrPadding(
                                      top: 17,
                                    )),
                                Container(
                                  margin: getMarginOrPadding(
                                      left: 4, right: 4, bottom: 4),
                                  width: double.infinity,
                                  padding: getPadding(
                                    top: 12,
                                    bottom: 12,
                                  ),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      getVerticalSize(16),
                                    ),
                                  ),
                                  child: Text(writingModel.name,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadline),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}
