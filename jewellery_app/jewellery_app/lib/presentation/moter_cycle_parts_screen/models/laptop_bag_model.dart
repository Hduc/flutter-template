import '../../../core/utils/image_constant.dart';
import 'productdetails2_item_model.dart';

/// This class defines the variables used in the [cup_cake_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MoterCycleParts {
  // Rx<List<Productdetails2ItemModel>> productdetails2ItemList =
  //     Rx(List.generate(6, (index) => Productdetails2ItemModel()));

  static List<MoterCyclePartsModel> getMoterCyclePartsData() {
    return [
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts1st,
          "Beautiful and luxury necklace",
          "4.05",
          "\$19.00",
          "\$25.00",
          "13%",
          "10",
          true,
          true,
          true),
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts2nd,
          "Presious gold ring",
          "5.05",
          "\$21.00",
          "\$25.00",
          "14%",
          "10",
          false,
          false,
          false),
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts3rd,
          "Gold bracelet jewelry on white isolated",
          "2.3",
          "\$24.00",
          "\$25.00",
          "12%",
          "10",
          false,
          false,
          false),
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts4th,
          "Antique gold chain with diamonds",
          "4.3",
          "\$22.00",
          "\$25.00",
          "13%",
          "10",
          false,
          false,
          true),
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts5th,
          "Red meg body spartdea kanacda",
          "4.5",
          "\$19.00",
          "\$25.00",
          "13%",
          "10",
          false,
          false,
          false),
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts6th,
          "Leto labore two r1  ",
          "4.5",
          "\$21.00",
          "\$25.00",
          "14%",
          "10",
          false,
          false,
          false),
    ];
  }
}
