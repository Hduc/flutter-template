import '../creative_page/widgets/creative_item_widget.dart';
import 'controller/creative_controller.dart';
import 'models/creative_item_model.dart';
import 'models/creative_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreativePage extends StatelessWidget {
  CreativeController controller =
      Get.put(CreativeController(CreativeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 20,
                    top: 24,
                    right: 20,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: getVerticalSize(
                            16,
                          ),
                        );
                      },
                      itemCount: controller
                          .creativeModelObj.value.creativeItemList.value.length,
                      itemBuilder: (context, index) {
                        CreativeItemModel model = controller.creativeModelObj
                            .value.creativeItemList.value[index];
                        return CreativeItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
