import 'package:game_store_app/core/app_export.dart';import 'package:game_store_app/presentation/profile_screen/models/profile_model.dart';import 'package:game_store_app/widgets/custom_bottom_bar.dart';class ProfileController extends GetxController {Rx<ProfileModel> profileModelObj = ProfileModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
