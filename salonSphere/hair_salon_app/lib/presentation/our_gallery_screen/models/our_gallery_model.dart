import 'package:get/get.dart';import 'ourgallery_item_model.dart';/// This class defines the variables used in the [our_gallery_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OurGalleryModel {Rx<List<OurgalleryItemModel>> ourgalleryItemList = Rx(List.generate(28,(index) => OurgalleryItemModel()));

 }
