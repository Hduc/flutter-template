import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/presentation/portfolio_page/models/portfolio_model.dart';

import '../models/portfolio_item_model.dart';

class PortfolioController extends GetxController {
  PortfolioController(this.portfolioModelObj);

  Rx<PortfolioModel> portfolioModelObj;

  SelectionPopupModel? selectedDropDownValue;
  List<PortfolioItemModel> portfolioData = PortfolioModel.getPortFolioData();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    portfolioModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    portfolioModelObj.value.dropdownItemList.refresh();
  }
}
