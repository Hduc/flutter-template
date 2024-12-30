import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vtv/util/get/bottom_selection_controller.dart';
import '../../../util/color_data.dart';
import '../../../util/constant.dart';
import '../../../util/data_file.dart';
import '../../../util/fetch_pixels.dart';
import '../../../util/get/route_key.dart';
import '../../../util/widget_utils.dart';
import '../../model/model_save.dart';

class TabSave extends StatelessWidget {
  const TabSave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ModelSave> saveList = DataFile.getAllSaveList();
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
            getCustomFont("My Save", 22, Colors.white, 1,
                fontWeight: FontWeight.w700),
          ],
        ).paddingSymmetric(horizontal: 20.h),
        30.h.verticalSpace,
        Expanded(
          child: ObxValue(
              (p0) => (isVisible.value)
                  ? buildSaveList(saveList, horSpace)
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        getNoDataWidget(
                            context,
                            "my_save_img.png",
                            'Create Your Own List',
                            'What you are looking for is not found',
                            isVisible),
                      ],
                    ),
              isVisible),
        ),
      ],
    );
  }

  ListView buildSaveList(List<ModelSave> saveList, double horSpace) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: saveList.length,
      itemBuilder: (context, index) {
        ModelSave list = saveList[index];
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
                        boxFit: BoxFit.fill)
                    .paddingAll(8.h),
                4.w.horizontalSpace,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getCustomFont(list.title, 17, getFontColor(context), 1,
                        fontWeight: FontWeight.w600),
                    12.h.horizontalSpace,
                    getCustomFont(
                        '2022 - Drama - season', 14, getFontColor(context), 1,
                        fontWeight: FontWeight.w400),
                    12.h.verticalSpace,
                    SizedBox(
                      width: 121.h,
                      child: getButtonFigma(
                        context,
                        getAccentColor(context),
                        true,
                        'Watch Now',
                        getFontColor(context),
                        () {
                          Constant.sendToNext(context, videoDetailScreenRoute);
                        },
                        EdgeInsets.zero,
                        withFilter: true,
                      ),
                    )
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
