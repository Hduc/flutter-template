// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../service_detail_two_container_page/controller/service_detail_two_container_controller.dart';
import '../../service_detail_two_container_page/models/service_detail_two_container_model.dart';
import '../../service_detail_two_container_page/widgets/gridrectangle_item_widget.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  ServiceDetailTwoContainerController controller = Get.put(
      ServiceDetailTwoContainerController(
          ServiceDetailTwoContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: getPadding(top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_our_gallery".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextBold20),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.ourGalleryScreen);
                    },
                    child: Text("lbl_view_all2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyPink800),
                  )
                ])),
        GridView.builder(
            padding: getPadding(top: 24),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: getVerticalSize(83),
                crossAxisCount: 4,
                mainAxisSpacing: getVerticalSize(24),
                crossAxisSpacing: getVerticalSize(20)),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.images.length,
            itemBuilder: (context, index) {
              String model = controller.images[index];
              return GridrectangleItemWidget(model);
            })
      ],
    );
  }
}
