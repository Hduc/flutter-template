import 'package:get/get.dart';
import 'package:investment_app/core/app_export.dart';
import 'listportfolio1_item_model.dart';
import 'list1_item_model.dart';

class HomepageVthreeModel {
  RxList<Listportfolio1ItemModel> listportfolio1ItemList =
      RxList.filled(5, Listportfolio1ItemModel('', '', '', '', '', ''));

  RxList<List1ItemModel> list1ItemList = RxList.filled(5, List1ItemModel());

  static List<Listportfolio1ItemModel> getPortfolioData() {
    return [
      Listportfolio1ItemModel(ImageConstant.imgEllipse2832, "Nightverse", "Night",
          "\$80,30", "1.80(+1.32%)", "up"),
      Listportfolio1ItemModel(ImageConstant.imgNikeIcon, "Bluemove", "Blue",
          "\$111,05", "-2.85(0.32%)", "down"),
      Listportfolio1ItemModel(ImageConstant.imgEllipse2832, "Nightverse", "Night",
          "\$80,30", "1.80(+1.32%)", "up"),
      Listportfolio1ItemModel(ImageConstant.imgNikeIcon, "Bluemove", "Blue",
          "\$111,05", "-2.85(0.32%)", "down"),
      Listportfolio1ItemModel(ImageConstant.imgEllipse2832, "Nightverse", "Night",
          "\$80,30", "1.80(+1.32%)", "up"),
      Listportfolio1ItemModel(ImageConstant.imgNikeIcon, "Bluemove", "Blue",
          "\$111,05", "-2.85(0.32%)", "down"),
    ];
  }
}
//Listportfolio1ItemModel(this.icon,this.title,this.subtitle,this.rate,this.progress,this.progressType);
