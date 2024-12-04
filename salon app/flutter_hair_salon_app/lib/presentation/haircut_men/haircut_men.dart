import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hair_salon_app/presentation/haircut_with_categorie_screen/controller/haircut_with_categorie_controller.dart';

import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../haircut_with_categorie_screen/models/gridrectangleth1_item_model.dart';
import '../haircut_with_categorie_screen/widgets/gridrectangleth1_item_widget.dart';

class HaircutMen extends StatefulWidget {
  const HaircutMen({Key? key}) : super(key: key);

  @override
  State<HaircutMen> createState() => _HaircutMenState();
}

class _HaircutMenState extends State<HaircutMen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HaircutWithCategorieController>(
        init: HaircutWithCategorieController(),
        builder: (controller) => GridView.builder(
          padding: getPadding(top: 24,left: 16,right: 16),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: getVerticalSize(181),
                crossAxisCount: 2,
                mainAxisSpacing: getVerticalSize(24),
                crossAxisSpacing: getVerticalSize(18)),
            physics: BouncingScrollPhysics(),
            itemCount: controller.haircutWithCategorieModelObj.value
                .gridrectangleth1ItemList.length,
            itemBuilder: (context, index) {
              Gridrectangleth1ItemModel model = controller
                  .haircutWithCategorieModelObj
                  .value
                  .gridrectangleth1ItemList
                  [index];
              return Gridrectangleth1ItemWidget(model,
                  onTapColumnrectangle: () {
                onTapColumnrectangle();
              });
            }));
  }

  onTapColumnrectangle() {
    Get.toNamed(AppRoutes.ourServicesOneScreen);
  }
}
