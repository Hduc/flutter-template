import '../../../core/app_export.dart';/// This class is used in the [grosscard_item_widget] screen.
class GrosscardItemModel {GrosscardItemModel({this.label, this.price, this.grossIncomeImage, this.id, }) { label = label  ?? Rx("Gross income");price = price  ?? Rx("33,400");grossIncomeImage = grossIncomeImage  ?? Rx(ImageConstant.imgChart);id = id  ?? Rx(""); }

Rx<String>? label;

Rx<String>? price;

Rx<String>? grossIncomeImage;

Rx<String>? id;

 }
