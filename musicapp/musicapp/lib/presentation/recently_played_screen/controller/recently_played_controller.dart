import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/recently_played_screen/models/recently_played_model.dart';/// A controller class for the RecentlyPlayedScreen.
///
/// This class manages the state of the RecentlyPlayedScreen, including the
/// current recentlyPlayedModelObj
class RecentlyPlayedController extends GetxController {Rx<RecentlyPlayedModel> recentlyPlayedModelObj = RecentlyPlayedModel().obs;

 }
