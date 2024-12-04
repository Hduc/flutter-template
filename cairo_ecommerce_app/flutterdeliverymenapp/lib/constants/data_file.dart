import 'package:shopping/constants/color_data.dart';
import 'package:shopping/models/model_my_order.dart';
import '../models/address_model.dart';

class DataFile {


  static List<ModelMyOrder> getMyOrders() {
    List<ModelMyOrder> subList = [];

    ModelMyOrder model = ModelMyOrder();
    model.name = "Kid's Girl Shrug";
    model.subTitle = "Stylish Girl";
    model.image = "order1.png";
    model.address = "Sean casey(4 km)";
    model.price = "\$22.00";
    model.offerPrice = "\$10";
    model.desc = "Female, 1.5 Years";
    model.status = "Pending";
    model.color = "#E09F2D".toColor();

    subList.add(model);

    model = ModelMyOrder();
    model.name = "Women's Crop Skirt";
    model.subTitle = "Trendy";
    model.address = "North Shore(2 km)";
    model.image = "order2.png";
    model.price = "\$18.00";
    model.offerPrice = "\$10";
    model.desc = "Male, 1 Years";
    model.status = "Delivered";
    model.color = "#29BA4A".toColor();

    subList.add(model);

    model = ModelMyOrder();
    model.name = "Kid's Boy Cloths";
    model.subTitle = "Stylish Kids";
    model.image = "order3.png";
    model.price = "\$14.00";
    model.address = "Sean casey(4 km)";
    model.offerPrice = "\$25";
    model.desc = "Female, 2 Years";
    model.status = "Cancelled";
    model.color = "#FB192D".toColor();

    subList.add(model);

    return subList;
  }


  static List<AddressModel> getAddressList() {
    List<AddressModel> subCatList = [];

    AddressModel mainModel = AddressModel();
    mainModel.id = 1;
    mainModel.name = "Chloe B Bird";
    mainModel.phoneNumber = "+1(368)68 000 068";
    mainModel.location = "87  Great North Road,ALTON,Great North Road";
    mainModel.type = "Home";
    subCatList.add(mainModel);

    mainModel = AddressModel();
    mainModel.id = 2;
    mainModel.name = "Rich P. Jeffery";
    mainModel.phoneNumber = "+1(368)68 000 068";
    mainModel.location =
        "4310 Clover Drive Colorado Springs,Clover Drive Colorado Springs, CO 80903";
    mainModel.type = "Company";
    subCatList.add(mainModel);

    return subCatList;
  }




  // static List<Color> colorList = [
  //   "#3E682C".toColor(),
  //   "#9EC1E2".toColor(),
  //   "#EACF81".toColor(),
  //   "#AE95CF".toColor(),
  //   "#E99B7D".toColor()
  // ];


}
