import '../../home_screen_container_page/models/listgroup4152_item_model.dart';
import '../controller/explore_games_controller.dart';
import '../models/explore_games_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';

// ignore: must_be_immutable
class ExploreGamesItemWidget extends StatelessWidget {
  ExploreGamesItemWidget(this.exploreGamesItemModelObj);

  Listgroup4152ItemModel exploreGamesItemModelObj;

  var exploreGmeController = Get.find<ExploreGamesController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExploreGamesController>(
      init: ExploreGamesController(),
      builder:(controller) =>  GestureDetector(
        onTap: (){
          controller.setGame(exploreGamesItemModelObj);
        },
        child: Container(
          padding: getPadding(
            left: 23,
            top: 7,
            right: 23,
            bottom: 7,
          ),
          decoration: exploreGamesItemModelObj.isselected!?AppDecoration.outlinelightBlueA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ):AppDecoration.fillGray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: exploreGamesItemModelObj.icon,
                height: getSize(
                  72,
                ),
                width: getSize(
                  73,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  exploreGamesItemModelObj.title!,
                  overflow: TextOverflow.ellipsis,

                  style: AppStyle.txtHeadline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
