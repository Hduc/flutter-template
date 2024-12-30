import '../../presentation/business_page/controller/business_controller.dart';

class Constant{
  static final String imagePath = "assets/images/";


  static List getList(int index,BusinessController controller){
    if(index == 1){
      return controller.writingList;
    }
    else if(index ==  2){
      return controller.creativeList;
    }
    else if(index == 3){
      return controller.businessList;
    }
    else if(index == 5){
      return controller.developerList;
    }
    else if(index == 6){
      return controller.personalList;
    }
    else if(index == 7){
      return controller.othersList;
    }
    return [];
  }
}