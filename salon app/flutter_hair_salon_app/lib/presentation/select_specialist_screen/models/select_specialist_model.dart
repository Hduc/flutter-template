import 'package:get/get.dart';
import 'select_item_model.dart';

/// This class defines the variables used in the [select_specialist_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectSpecialistModel {
  // Rx<List<SelectItemModel>> selectItemList =
  //     Rx(List.generate(7, (index) => SelectItemModel()));

  RxList<SelectItemModel> selectItemList = [
    SelectItemModel("Esther Howard", "Sr Barber", "spe1.png"),
    SelectItemModel("Darrell Steward", "Makeup Artist", "spe2.png"),
    SelectItemModel("Annette Black", "Jr Barber", "spe3.png"),
    SelectItemModel("Kristin Watson", "Hair Stylish", "spe4.png"),
    SelectItemModel("Wade Warren", "Sr Massager", "spe5.png"),
    SelectItemModel("Eleanor Poul", "Jr Massager", "spe6.png"),
    SelectItemModel("Eleanor Pena", "Jr Barber", "spe7.png"),
  ].obs;
}
