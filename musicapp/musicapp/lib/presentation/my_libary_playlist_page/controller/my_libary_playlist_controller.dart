import 'package:musicapp/core/app_export.dart';

import '../../my_libary_artist_page/models/my_libary_artist_model.dart';
import '../../my_libary_artist_page/models/my_libary_item_model.dart';

/// A controller class for the MyLibaryPlaylistPage.
///
/// This class manages the state of the MyLibaryPlaylistPage, including the
/// current myLibaryPlaylistModelObj
class MyLibaryPlaylistController extends GetxController {
 List<MyLibaryItemModel> myPlayList =  MyLibaryArtistModel.myLibaryItemList();
}
