import 'package:dating_app/data/pref_data.dart';
import 'package:dating_app/presentation/search_screen/last_result.dart';

import '../../widgets/custom_text_form_field.dart';
import 'controller/search_controller.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore_for_file: must_be_immutable
class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        if (PrefData.currentIndex == 0) {
          {
           PrefData.currentIndex=0;
           onTapTxtCancel();
            controller.update();
          }
        }
        else {
          PrefData.currentIndex = 0;
          controller.update();
        }
        return Future(() => false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:getSize(16))                      ,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: getPadding(top: getSize(20)
                ),
                        child:  CustomTextFormField(
                            textStyle: theme.textTheme.bodyLarge,
                            autofocus: false,
                            fillColor: Color(0xFFF8F8F8),
                            controller: controller.searchController,
                            margin: getMargin(top: 6,),
                            hintText: "Search here".tr,
                            textInputAction: TextInputAction.done,
                            hintStyle: CustomTextStyles.bodyLargeGray600,
                            textInputType: TextInputType.visiblePassword,
                            borderDecoration: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                            ),
                            enableBorderDecoration: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none
                            ),
                            prefix: CustomImageView(
                              svgPath: ImageConstant.imgSearch,
                              height: getHorizontalSize(24),
                              margin: getMargin(left: 16,right: 8),

                            ),
                            suffix: InkWell(
                                onTap: () {

                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 16,
                                        right: 16,
                                        bottom: 16),
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgClose,color: Colors.black,))),
                            suffixConstraints: BoxConstraints(
                                maxHeight: getVerticalSize(57)),



                            contentPadding:
                            getPadding( top: 18, bottom: 18)),
                      ),
                    ),
                    SizedBox(
                      width: getSize(8)
                    ),
                    GestureDetector(
                      onTap: () {
                        onTapTxtCancel();

                      },
                      child: Padding(
                        padding:  getPadding(top: 20),
                        child: Text('Cancel',style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: getFontSize(16),
                          color: Colors.black,
                        ),),
                      ),
                    )
                  ],
                ),
              ),
              GetBuilder<SearchController>(builder: (controller) {
                return controller.searchController.text.isEmpty?
                Padding(
                  padding: getPadding(
                    top: getSize(24),
                    left: getSize(16),
                    right: getSize(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_recent".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleMediumBlack900,
                          ),
                          Text(
                            "lbl_clear_all".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodyMedium14,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getSize(20)
                      ),
                     LastResult(

                     ),
                      LastResult(
                        search: 'Wade warren',
                      ),
                      LastResult(
                        search: 'Dianne russell',
                      ),
                      LastResult(
                        search: 'Courtney henry',
                      ),
                      LastResult(
                        search: 'Jerome bell',
                      ),
                    ],
                  ),
                ):

                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.only(top:getSize(16)),
                    child: GridView.builder(
                      padding: EdgeInsets.symmetric(horizontal:getSize(16)),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getSize(252),/**/
                            crossAxisCount: 2,
                            mainAxisSpacing: getSize(16),
                            crossAxisSpacing: getSize(16)),
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.personList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x14000000),
                                  blurRadius: getSize(5),
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ]
                            ),
                            child: Padding(
                              padding: getPadding(all: getSize(8)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    clipBehavior: Clip.antiAlias,
                                    height: getSize(172),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: CustomImageView(
                                      imagePath: controller.personList[index].img,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(top: getSize(8),bottom: getSize(3)),
                                    child: Text(controller.personList[index].name.toString(),style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),maxLines: 1,),
                                  ),
                                  Text(controller.personList[index].loc.toString(),style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                ],
                              ),
                            ),
                          );
                        }
                        ),
                  ),
                );
              },init: SearchController(),)

            ],
          ),
        ),
      ),
    );
  }
  onTapTxtCancel() {
    Get.toNamed(
      AppRoutes.locationAccessContainer1Screen,
    );
  }
}
