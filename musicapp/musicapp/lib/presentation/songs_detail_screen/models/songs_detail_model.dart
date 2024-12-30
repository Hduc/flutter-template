import 'package:get/get.dart';import 'songs_detail_item_model.dart';/// This class defines the variables used in the [songs_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SongsDetailModel {Rx<List<SongsDetailItemModel>> songsDetailItemList = Rx(List.generate(4,(index) => SongsDetailItemModel()));

 }
