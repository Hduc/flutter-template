import 'package:get/get.dart';

/// This class is used in the [download_item_widget] screen.

class DownloadItemModel {
  Rx<String> therobotpowarTxt = Rx("Mini militia");

  Rx<String> filesizeTxt = Rx("1.2 GB / 2.0 GB");

  Rx<String> k80mbsTxt = Rx("80MB/s");

  Rx<String>? id = Rx("");

  String? image;
  String? name;
  int? gameId;
  DownloadItemModel(this.image,this.name,this.gameId);
}

class Downloading{
  String? image;
  String? name;
  bool? isDownloading;
  Downloading(this.image,this.name,this.isDownloading);
}
