import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/artist_song_screen/models/artist_song_model.dart';/// A controller class for the ArtistSongScreen.
///
/// This class manages the state of the ArtistSongScreen, including the
/// current artistSongModelObj
class ArtistSongController extends GetxController {Rx<ArtistSongModel> artistSongModelObj = ArtistSongModel().obs;

 }
