import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/appbar.dart';
import '../add_pics_screen/widgets/add_pics_item_widget.dart';
import 'controller/add_pics_controller.dart';
import 'models/add_pics_item_model.dart';

class AddPicsScreen extends GetWidget<AddPicsController> {
  const AddPicsScreen({Key? key}) : super(key: key);

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
          title: 'Step 6/7',
        ),
              Divider(
                color: Color(0xFFE7E7E7),
                thickness: getSize(1.5),
              ),
              Padding(
                padding:  EdgeInsets.only(top:getSize(24),left: getSize(16),right:getSize(16)),
                child: Text("msg_add_your_recent".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headlineSmall),
              ),
              Expanded(
                  child: Padding(
                      padding: getPadding(top: getSize(16),left: getSize(16),right: getSize(16)),
                      child:  GridView.builder(
                       padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getSize(140),
                                  crossAxisCount: 3,
                                  mainAxisSpacing:
                                      getSize(16),
                                  crossAxisSpacing:
                                      getSize(15.h)),

                          physics: BouncingScrollPhysics(),
                          itemCount: controller.addPicsModelObj.value
                              .addPicsItemList.value.length,
                          itemBuilder: (context, index) {
                            AddPicsItemModel model = controller
                                .addPicsModelObj
                                .value
                                .addPicsItemList
                                .value[index];
                            return AddPicsItemWidget(model,
                                onTapImg: () {

                            });
                          })))
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


  onTapNext() {
    Get.toNamed(
      AppRoutes.descriptionScreen,
    );
  }
}
