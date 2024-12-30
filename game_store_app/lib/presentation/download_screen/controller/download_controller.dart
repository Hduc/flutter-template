import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/download_screen/models/download_model.dart';import 'package:game_store_app/widgets/custom_bottom_bar.dart';class DownloadController extends GetxController {Rx<DownloadModel> downloadModelObj = DownloadModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
