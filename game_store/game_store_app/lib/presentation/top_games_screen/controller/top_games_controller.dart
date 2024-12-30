import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/top_games_screen/models/top_games_model.dart';class TopGamesController extends GetxController {Rx<TopGamesModel> topGamesModelObj = TopGamesModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
