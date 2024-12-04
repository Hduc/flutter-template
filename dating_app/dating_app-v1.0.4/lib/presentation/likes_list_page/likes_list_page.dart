import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/home_page/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../generated/assets.dart';
import '../home_page/models/home_model.dart';
import 'controller/likes_list_controller.dart';


// ignore_for_file: must_be_immutable
class LikesListPage extends StatelessWidget {
  LikesListPage({Key? key}) : super(key: key);

  LikesListController likesListController = Get.put(LikesListController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarIconBrightness:Brightness.dark));
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                padding: getPadding(
                    top: getSize(40)
                    , bottom: getSize(10)),
                decoration: AppDecoration.outline3,
                child: Padding(
                    padding: getPadding(top: getSize(5),left: getSize(16),right: getSize(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Expanded(
                          child: Text("Likes".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineMedium),
                        ),
                      ],
                    ))),

            Expanded(
              child: GetBuilder<HomeController>(
                builder: (controller) {
                  return  GridView.builder(

                    padding: EdgeInsets.only(top: getSize(16),right: getSize(16),left: getSize(16)),
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getSize(252),
                        crossAxisCount: 2,
                        mainAxisSpacing:
                        getSize(16),
                        crossAxisSpacing:
                        getSize(16)),
                    physics: BouncingScrollPhysics(),
                    itemCount: likesListController.getfavData.length,
                    itemBuilder: (context, index) {
                      HomeModel data = likesListController.getfavData[index];
                      return GestureDetector(
                        onTap: () {

                          print("data is ============  ${data.isNear}");
                         likesListController.passData(data);
                          // Get.amed(AppRoutes.detailsScreen);
                          Get.toNamed(AppRoutes.detailsScreen);
                        },
                        child: Container(
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
                            padding:  getPadding( all: getSize(8)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    clipBehavior: Clip.antiAlias,
                                    height: getVerticalSize(170),
                                    width: double.infinity,

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child:Stack(
                                      fit: StackFit.passthrough,
                                      clipBehavior: Clip.none,
                                      children: [
                                        CustomImageView(
                                          imagePath: controller.personList[index].img,
                                          fit: BoxFit.cover,
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding:  EdgeInsets.all(getSize(8)),
                                            child: Container(
                                                height: getSize(28),
                                                width: getSize(28),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Color(0x42F8F8F8),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Padding(
                                                  padding:  EdgeInsets.all(getSize(6)),
                                                  child: Image.asset(Assets.imagesHeart,height: getSize(14),),
                                                )
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(top: getSize(8),bottom: getSize(3)),
                                  child: Text(controller.personList[index].name.toString(),style: TextStyle(
                                    color: Colors.black,
                                    fontSize:16,
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
                        ),
                      );
                    },);

                },init: HomeController(),
              ),
            ),

          ]),
    );

  }
  onTapClient() {
    Get.toNamed(
      AppRoutes.detailsScreen,
    );
  }
}
