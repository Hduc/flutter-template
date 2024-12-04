import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';
import 'package:flutter/material.dart';

import '../intrest_screen/widgets/categorie2_item_widget.dart';
import 'controller/intrest_controller.dart';
import 'models/categorie2_item_model.dart';

class IntrestScreen extends GetWidget<IntrestController> {
  const IntrestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor:Colors.white,

        body: Column(
          children: [
            CustomAppBarText(
              title: 'Intrest',
            ),
            Padding(
                padding: getPadding(top: getSize(24), bottom: getSize(5),left: getSize(16),right: getSize(16)),
                child: Obx(() => Wrap(
                  alignment:WrapAlignment.start,
                    runSpacing: getSize(5),
                    spacing: getSize(15),
                    children: List<Widget>.generate(
                        controller.categoriesList.length, (index) {
                      Categorie2ItemModel model = controller.intrestModelObj
                          .value.categorie2ItemList.value[index];
                      return Categorie2ItemWidget(model,
                        categoriesText: controller.categoriesList[index].text,
                       );
                    })))),
          ],
        ));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
