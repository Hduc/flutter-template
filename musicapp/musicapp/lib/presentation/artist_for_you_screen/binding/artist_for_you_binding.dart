import '../controller/artist_for_you_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ArtistForYouScreen.
///
/// This class ensures that the ArtistForYouController is created when the
/// ArtistForYouScreen is first loaded.
class ArtistForYouBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArtistForYouController());
  }
}
