import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import '../../core/utils/appbar.dart';
import '../intro_screen/widgets/categorie_item_widget.dart';
import 'controller/intro_controller.dart';
import 'models/categorie_item_model.dart';

class IntroScreen extends GetWidget<IntroController> {
  const IntroScreen({Key? key}) : super(key: key);

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
                title: 'Step 5/7',
              ),
              Divider(
                color: Color(0xFFE7E7E7),
                thickness: getSize(1.5),
              ),
              Padding(
                padding:  EdgeInsets.only(top: getSize(24),left: getSize(16),bottom: getSize(16)),
                child: Text("msg_what_are_you_into".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headlineSmall),
              ),
             Expanded(
               child: ListView(
                 padding: EdgeInsets.zero,
                 physics: BouncingScrollPhysics(),
                 children: [
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: getSize(16)),
                     child: Obx(() => Wrap(
                         runSpacing: getVerticalSize(0),
                         spacing: getSize(15),
                         children: List<Widget>.generate(
                             controller.categoriesList.length, (index) {
                           CategorieItemModel model = controller
                               .introModelObj
                               .value
                               .categorieItemList
                               .value[index];
                           return CategorieItemWidget(model,
                             categories:controller.categoriesList[index].text,
                           );
                         }))),
                   )
                 ],
               ),
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
            }));
  }


  onTapArrowleft7() {
    Get.back();
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.addPicsScreen,
    );
  }
}
