import 'package:get/get.dart';
import 'package:jewellery_app/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [detail_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Small",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "medium",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Large",
    )
  ]);
}
