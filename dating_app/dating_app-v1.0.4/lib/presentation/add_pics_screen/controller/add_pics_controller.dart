import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/add_pics_screen/models/add_pics_model.dart';
import 'package:image_picker/image_picker.dart';

/// A controller class for the AddPicsScreen.
///
/// This class manages the state of the AddPicsScreen, including the
/// current addPicsModelObj
class AddPicsController extends GetxController {
  Rx<AddPicsModel> addPicsModelObj = AddPicsModel().obs;
  ImagePicker picker = ImagePicker();
  XFile? photo;

  selectPic() async {
  photo = await picker.pickImage(source: ImageSource.camera);
   update();
  }


  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }
}
