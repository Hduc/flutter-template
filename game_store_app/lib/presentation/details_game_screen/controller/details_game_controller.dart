import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/details_game_screen/models/details_game_model.dart';class DetailsGameController extends GetxController {Rx<DetailsGameModel> detailsGameModelObj = DetailsGameModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
