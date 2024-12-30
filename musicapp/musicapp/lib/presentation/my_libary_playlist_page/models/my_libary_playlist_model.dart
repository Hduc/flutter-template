import 'package:get/get.dart';import 'my_libary1_item_model.dart';/// This class defines the variables used in the [my_libary_playlist_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyLibaryPlaylistModel {Rx<List<MyLibary1ItemModel>> myLibary1ItemList = Rx(List.generate(8,(index) => MyLibary1ItemModel()));

 }
