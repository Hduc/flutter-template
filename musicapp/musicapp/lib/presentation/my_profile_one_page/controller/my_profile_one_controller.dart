import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/my_profile_one_page/models/my_profile_one_model.dart';/// A controller class for the MyProfileOnePage.
///
/// This class manages the state of the MyProfileOnePage, including the
/// current myProfileOneModelObj
class MyProfileOneController extends GetxController {MyProfileOneController(this.myProfileOneModelObj);

Rx<MyProfileOneModel> myProfileOneModelObj;

Rx<bool> isCheckbox = false.obs;

 }
