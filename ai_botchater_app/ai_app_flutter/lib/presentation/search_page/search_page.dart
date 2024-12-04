import '../search_page/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchScreenController controller = Get.put(SearchScreenController(SearchModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      padding: getPadding(
                        left: 163,
                        top: 14,
                        right: 163,
                        bottom: 14,
                      ),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: Text(
                              "lbl_history".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAirbnbCerealWBd24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomSearchView(
                    focusNode: FocusNode(),
                    autofocus: true,
                    controller: controller.searchController,
                    hintText: "lbl_search".tr,
                    margin: getMargin(
                      left: 20,
                      top: 8,
                      right: 20,
                    ),
                    prefix: Container(
                      margin: getMargin(
                        left: 16,
                        top: 12,
                        right: 16,
                        bottom: 12,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        48,
                      ),
                    ),
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          15,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          controller.searchController.clear();
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 25,
                      ),
                      child: Text(
                        "lbl_previous_search".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHeadline,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: getPadding(
                        left: 20,
                        top: 19,
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
                                25,
                              ),
                            );
                          },
                          itemCount: controller
                              .searchModelObj.value.searchItemList.value.length,
                          itemBuilder: (context, index) {
                            SearchItemModel model = controller.searchModelObj
                                .value.searchItemList.value[index];
                            return SearchItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
