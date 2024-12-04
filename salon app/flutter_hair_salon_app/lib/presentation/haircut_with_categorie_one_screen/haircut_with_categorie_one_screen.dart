import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../haircut_with_categorie_one_screen/widgets/gridrectangleth2_item_widget.dart';
import 'controller/haircut_with_categorie_one_controller.dart';
import 'models/gridrectangleth2_item_model.dart';

class HaircutWithCategorieOneScreen extends StatefulWidget {
  @override
  State<HaircutWithCategorieOneScreen> createState() =>
      _HaircutWithCategorieOneScreenState();
}

class _HaircutWithCategorieOneScreenState
    extends State<HaircutWithCategorieOneScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HaircutWithCategorieOneController>(
        init: HaircutWithCategorieOneController(),
        builder: (controller) => GridView.builder(
            padding: getPadding(top: 24, left: 16, right: 16),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: getVerticalSize(181),
                crossAxisCount: 2,
                mainAxisSpacing: getVerticalSize(24),
                crossAxisSpacing: getVerticalSize(18)),
            physics: BouncingScrollPhysics(),
            itemCount: controller.haircutWithCategorieOneModelObj.value
                .gridrectangleth2ItemList.length,
            itemBuilder: (context, index) {
              Gridrectangleth2ItemModel model = controller
                  .haircutWithCategorieOneModelObj
                  .value
                  .gridrectangleth2ItemList[index];
              return Gridrectangleth2ItemWidget(model,
                  onTapColumnrectangle: () {
                onTapColumnrectangle();
              });
            }));
  }

  onTapColumnrectangle() {
    Get.toNamed(AppRoutes.ourServicesOneScreen);
  }

  onTapMen() {
    Get.toNamed(
      AppRoutes.haircutWithCategorieScreen,
    );
  }

  onTapArrowleft24() {
    Get.back();
  }
}
