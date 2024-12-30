import '../controller/my_libary_playlist_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyLibaryPlaylistTabContainerScreen.
///
/// This class ensures that the MyLibaryPlaylistTabContainerController is created when the
/// MyLibaryPlaylistTabContainerScreen is first loaded.
class MyLibaryPlaylistTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyLibaryPlaylistTabContainerController());
  }
}
