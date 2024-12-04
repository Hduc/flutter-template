import '../../../core/utils/image_constant.dart';
import 'productdetails_item_model.dart';

/// This class defines the variables used in the [top_picks_for_you_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopPicksForYouModel {
  // Rx<List<ProductdetailsItemModel>> productdetailsItemList =
  //     Rx(List.generate(6, (index) => ProductdetailsItemModel()));

  static List<ProductdetailsItemModel> getTopPicksForYou() {
    return [
      ProductdetailsItemModel(
        ImageConstant.imgTopPicks1st,
        "The diamond ring isolated",
        "4.3",
        "\$12.00",
        "\$25.00",
        "13%",
        "10",
        false,
        false,
        false,
        false,
      ),
      ProductdetailsItemModel(
        ImageConstant.imgTopPicks2nd,
        "Gold bracelet jewelry",
        "5.0",
        "\$25.00",
        "\$25.00",
        "30%",
        "10",
        true,
        false,
        false,
        false,
      ),
      ProductdetailsItemModel(
          ImageConstant.imgTopPicks3rd,
          "Pile of gold bars of biscuite",
          "4.3",
          "\$30.00",
          "\$25.00",
          "12%",
          "10",
          false,
          false,
          false,
          false),
      ProductdetailsItemModel(
          ImageConstant.imgTopPicks4th,
          "Bust showcase jewelry display for necklace",
          "4.3",
          "\$22.00",
          "\$30.00",
          "20%",
          "10",
          true,
          false,
          false,
          true),
      ProductdetailsItemModel(
          ImageConstant.imgTopPicks5th,
          "Metal ofautomobile pump",
          "4.3",
          "\$28.00",
          "\$38.00",
          "20%",
          "10",
          false,
          false,
          false,
          true),
      ProductdetailsItemModel(
          ImageConstant.imgTopPicks6th,
          "Black front sweater",
          "4.3",
          "\$15.00",
          "\$25.00",
          "00%",
          "10",
          false,
          false,
          false,
          false),
    ];
  }
}
