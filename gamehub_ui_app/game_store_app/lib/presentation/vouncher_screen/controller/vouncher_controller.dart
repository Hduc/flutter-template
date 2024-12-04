import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/vouncher_screen/models/vouncher_model.dart';class VouncherController extends GetxController {Rx<VouncherModel> vouncherModelObj = VouncherModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
