import 'package:investment_app/core/app_export.dart';import 'package:investment_app/presentation/homepage_screen/models/homepage_model.dart';import 'package:investment_app/widgets/custom_bottom_bar.dart';class HomepageController extends GetxController {Rx<HomepageModel> homepageModelObj = HomepageModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
