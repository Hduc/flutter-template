import 'package:get/get.dart';
import 'package:investment_app/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/utils/image_constant.dart';
import 'portfolio_item_model.dart';

class PortfolioModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;
static List<PortfolioItemModel> getPortFolioData(){
  return[
    PortfolioItemModel("Nightverse","Night",ImageConstant.imgEllipse2832,"+14%","\$35.123"),
    PortfolioItemModel("Alt Markets","AMX",ImageConstant.imgAltMarkets,"+18%","\$85.123"),
    PortfolioItemModel("Convex Fxs","CNVFXS",ImageConstant.imgConvexFxs,"+31%","\$35.123"),
    PortfolioItemModel("SPOT","ACD",ImageConstant.imgSpot,"+63%","\$35.123"),
    PortfolioItemModel("Sbux","Starbucks",ImageConstant.imgSubx,"+14%","\$35.123"),
  ];
}
  RxList<PortfolioItemModel> portfolioItemList =
      RxList.filled(5, PortfolioItemModel("","","","",""));
}
