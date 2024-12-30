import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/add_playlist_screen/models/add_playlist_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddPlaylistScreen.
///
/// This class manages the state of the AddPlaylistScreen, including the
/// current addPlaylistModelObj
class AddPlaylistController extends GetxController {TextEditingController playlistnameController = TextEditingController();

Rx<AddPlaylistModel> addPlaylistModelObj = AddPlaylistModel().obs;

@override void onClose() { super.onClose(); playlistnameController.dispose(); } 
 }
