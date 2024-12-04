import '../writing_page/widgets/writing_item_widget.dart';import 'controller/writing_controller.dart';import 'models/writing_item_model.dart';import 'models/writing_model.dart';import 'package:ai_app_flutter/core/app_export.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class WritingPage extends StatelessWidget {WritingController controller = Get.put(WritingController(WritingModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: Colors.transparent, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Expanded(child: Padding(padding: getPadding(left: 20, top: 24, right: 20), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(172), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(16), crossAxisSpacing: getHorizontalSize(16)), physics: BouncingScrollPhysics(), itemCount: controller.writingModelObj.value.writingItemList.value.length, itemBuilder: (context, index) {WritingItemModel model = controller.writingModelObj.value.writingItemList.value[index]; return WritingItemWidget(model, navigateWriteAnArticles: () {navigateWriteAnArticles();});}))))])))); } 
navigateWriteAnArticles() { Get.toNamed(AppRoutes.writeAnArticlesScreen, ); } 
 }
