import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/near_by_you_page/models/near_by_you_model.dart';

/// A controller class for the NearByYouPage.
///
/// This class manages the state of the NearByYouPage, including the
/// current nearByYouModelObj
class NearByYouController extends GetxController {
  NearByYouController(this.nearByYouModelObj);

  Rx<NearByYouModel> nearByYouModelObj;
}
