import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/artist_for_you_screen/models/artist_for_you_model.dart';/// A controller class for the ArtistForYouScreen.
///
/// This class manages the state of the ArtistForYouScreen, including the
/// current artistForYouModelObj
class ArtistForYouController extends GetxController {Rx<ArtistForYouModel> artistForYouModelObj = ArtistForYouModel().obs;

 }
