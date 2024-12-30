import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/recommended_for_you_screen/models/recommended_for_you_model.dart';/// A controller class for the RecommendedForYouScreen.
///
/// This class manages the state of the RecommendedForYouScreen, including the
/// current recommendedForYouModelObj
class RecommendedForYouController extends GetxController {Rx<RecommendedForYouModel> recommendedForYouModelObj = RecommendedForYouModel().obs;

 }
