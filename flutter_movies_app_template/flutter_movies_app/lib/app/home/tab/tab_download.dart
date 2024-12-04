import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vtv/util/color_data.dart';
import 'package:vtv/util/data_file.dart';
import 'package:vtv/util/fetch_pixels.dart';
import 'package:vtv/util/widget_utils.dart';

import '../../../util/constant.dart';
import '../../../util/get/bottom_selection_controller.dart';
import '../../../util/get/route_key.dart';
import '../../model/model_download.dart';

class TabDownload extends StatelessWidget {
  const TabDownload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ModelDownload> downloadList = DataFile.getAllDownloadList();
    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    RxBool isVisible = false.obs;

    return Column(
      children: [
        getVerSpace(20.h),
        Row(
          children: [
            GetBuilder<BottomItemSelectionController>(builder: (controller) {
              return GestureDetector(
                onTap: () {
                  controller.bottomBarSelectedItem.value=0;
                  controller.update();
                },
                child: getSvgImage(context, "arrow_back.svg", 24),
              );
            },init: BottomItemSelectionController(),),
            getHorSpace(20.h),
            getCustomFont("My Downloads", 22, Colors.white, 1,
                fontWeight: FontWeight.w700),
          ],
        ).paddingSymmetric(horizontal: 20.h),
        30.h.verticalSpace,
        Expanded(
            child: ObxValue(
                (p0) => (isVisible.value)
                    ? buildDownloadList(downloadList, horSpace)
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          getNoDataWidget(
                              context,
                              "no_download_img.png",
                              'No Download Yet!',
                              'Your Download will be appear here',
                              isVisible),
                        ],
                      ),
                isVisible))
      ],
    );
  }

  ListView buildDownloadList(
      List<ModelDownload> downloadList, double horSpace) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        ModelDownload list = downloadList[index];
        return GestureDetector(
          onTap: () {
            Constant.sendToNext(context, videoDetailScreenRoute);
          },
          child: Container(
            height: 134.h,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: horSpace, vertical: 10.h),
            decoration: getButtonDecoration(getCardColor(context),
                withCorners: true, corner: 12.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getCircularImage(context, 118.h, double.infinity, 12, list.img,
                        boxFit: BoxFit.cover)
                    .paddingAll(8.h),
                4.w.horizontalSpace,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getCustomFont(list.title, 16, getFontColor(context), 1,
                        fontWeight: FontWeight.w600),
                    6.h.verticalSpace,
                    getCustomFont(list.time, 14, getFontHint(context), 1,
                        fontWeight: FontWeight.w400),
                  ],
                ).marginSymmetric(vertical: 15.h)),
                InkWell(
                    onTap: () {
                      showGetDialog(
                          context,
                          'sure_delete_img.png',
                          'Are You Sure?',
                          'By doing this,the saved files will be deleted from your storage list',
                          'Delete',
                          () {
                            Constant.backToPrev(context);
                          },
                          dialogHeight: 441,
                          withCancelBtn: true,
                          btnTextCancel: 'Cancel',
                          functionCancel: () {
                            Constant.backToPrev(context);
                          });
                    },
                    child:
                        getSvgImage(context, 'trash.svg', 16).marginAll(12.h))
              ],
            ),
          ),
        );
      },
    );
  }
}
