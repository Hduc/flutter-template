import 'package:dating_app/core/app_export.dart';
import '../../home_page/models/home_model.dart';
import '../../home_page/models/model_data.dart';/// A controller class for the LikesListPage.
///
/// This class manages the state of the LikesListPage, including the
/// current likesListModelObj
class LikesListController extends GetxController {
  HomeModel? currentData ;
  List<HomeModel> getfavData = HomeModelData.getHome();

   passData(data){
      currentData = data;
      update();
         }

   @override
  void onInit() {
    // TODO: implement onInit
     update();
    super.onInit();

  }

 }
