import 'package:get/get.dart';import 'artist_song_item_model.dart';/// This class defines the variables used in the [artist_song_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistSongModel {Rx<List<ArtistSongItemModel>> artistSongItemList = Rx(List.generate(4,(index) => ArtistSongItemModel()));

 }
