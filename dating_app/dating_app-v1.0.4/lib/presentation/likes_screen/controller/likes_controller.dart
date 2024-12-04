import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/likes_screen/models/likes_model.dart';



/// A controller class for the LikesScreen.
///
/// This class manages the state of the LikesScreen, including the
/// current likesModelObj
class LikesController extends GetxController {
  Rx<LikesModel> likesModelObj = LikesModel().obs;



}
