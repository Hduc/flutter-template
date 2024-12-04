import 'package:get/get.dart';
import 'business_item_model.dart';

/// This class defines the variables used in the [business_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BusinessModel {
  Rx<List<BusinessItemModel>> businessItemList =
      Rx(List.generate(4, (index) => BusinessItemModel()));

  String image;
  String name;

  BusinessModel(this.image, this.name);
}
