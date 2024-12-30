import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/play_screen/models/play_model.dart';/// A controller class for the PlayScreen.
///
/// This class manages the state of the PlayScreen, including the
/// current playModelObj
class PlayController extends GetxController {Rx<PlayModel> playModelObj = PlayModel().obs;

 }
