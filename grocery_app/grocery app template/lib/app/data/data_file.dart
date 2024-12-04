import 'package:grocery/app/models/model_category.dart';
import 'package:grocery/app/models/model_intro.dart';
import 'package:grocery/app/models/model_sub_item.dart';
import 'package:grocery/base/color_data.dart';

import '../../base/model_review_slider.dart';
import '../models/address_model.dart';
import '../models/payment_card_model.dart';
import '../models/model_cart.dart';
import '../models/model_my_order.dart';

class DataFile {
  static List<String> getAllGalleryList() {
    List<String> profileGallery = [
      "gallery1.png",
      "gallery2.png",
      "gallery3.png",
      "gallery4.png",
      "gallery5.png",
      "gallery6.png"
    ];

    return profileGallery;
  }

  static List<String> getAllCollectionListList() {
    List<String> profileGallery = [
      "add_image.png",
      "collect1.png",
      "collect2.png",
      "collect3.png",
      "collect4.png",
      "collect5.png",
      "collect6.png",
      "collect7.png",
    ];

    return profileGallery;
  }

  static List<ModelIntro> introList = [
    ModelIntro(
        1,
        "Fresh Grocery\nFor You",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
        "intro1.png"),
    ModelIntro(
        2,
        "Choose From Our\nBest Menu",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
        "intro2.png"),
    ModelIntro(
        2,
        "Quick Delivery At\nYour Doorstep",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
        "intro3.png")
  ];

  static List<ModelIntro> getAllOfferList() {
    List<ModelIntro> getOfferList = [
      ModelIntro(
          1,
          "Fresh Grocery\nFor You",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
          "intro1.png"),
      ModelIntro(
          2,
          "Choose From Our\nBest Menu",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
          "intro2.png"),
      ModelIntro(
          2,
          "Quick Delivery At\nYour Doorstep",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
          "intro3.png")
    ];
    return getOfferList;
  }

  static List<ModelReviewSlider> getOption() {
    return [
      ModelReviewSlider("Address", "checkout_address.svg"),
      ModelReviewSlider("Payment", "checkout_payment.svg"),
      ModelReviewSlider("Confirm", "checkout_confirm.svg")
    ];
  }

  static List<PaymentCardModel> getPaymentCardList() {
    List<PaymentCardModel> subCatList = [];

    PaymentCardModel mainModel = PaymentCardModel();
    mainModel.id = 1;
    mainModel.name = "Paypal";
    mainModel.image = "paypal.svg";
    mainModel.desc = "5416";
    subCatList.add(mainModel);

    mainModel = PaymentCardModel();
    mainModel.id = 2;
    mainModel.name = "Master Card";
    mainModel.desc = "8624";
    mainModel.image = "mastercard.svg";
    subCatList.add(mainModel);

    mainModel = PaymentCardModel();
    mainModel.id = 3;
    mainModel.name = "Visa";
    mainModel.desc = "4565";
    mainModel.image = "visa.svg";
    subCatList.add(mainModel);

    return subCatList;
  }

  static List<AddressModel> getAddressList() {
    List<AddressModel> subCatList = [];

    AddressModel mainModel = AddressModel();
    mainModel.id = 1;
    mainModel.name = "Jerome Bell";
    mainModel.phoneNumber = "(405) 555-0128";
    mainModel.location = "2972 Westheimer Rd.\nSanta Ana, Illinois 85486 ";
    mainModel.type = "Home";
    subCatList.add(mainModel);

    mainModel = AddressModel();
    mainModel.id = 2;
    mainModel.name = "Jerome Bell";
    mainModel.phoneNumber = "(405) 555-0128";
    mainModel.location = "3517 W. Gray St. Utica,\nPennsylvania 57867";
    mainModel.type = "Company";
    subCatList.add(mainModel);

    return subCatList;
  }

  static List<ModelSubItem> getAllSubItemsList() {
    List<ModelSubItem> subList = [
      ModelSubItem(1, "Strawberry", "", "strawberry.png", "5.20"),
      ModelSubItem(2, "Cabbage", "", "cabbage.png", "3.85")
    ];
    return subList;
  }

  static List<ModelCategory> getAllCategoryList() {
    List<ModelCategory> getOfferList = [
      ModelCategory(1, "cat1.png", "Vegetables", "#E5FBE2"),
      ModelCategory(2, "cat2.png", "Fruits", "#FEE6F0"),
      ModelCategory(3, "cat3.png", "Dairy", "#FFF4C2"),
      ModelCategory(4, "cat4.png", "Meat", "#FFF2E7"),
      ModelCategory(5, "cat5.png", "Pulses", "#FFE2D5"),
      ModelCategory(6, "cat6.png", "Nuts", "#FFF1D9"),
      ModelCategory(7, "cat7.png", "Drinks", "#D8EAFD"),
      ModelCategory(8, "cat8.png", "Rice", "#FFE5CF"),
      ModelCategory(9, "cat9.png", "Wheat", "#FFEFD9"),
      ModelCategory(10, "cat10.png", "Sneaks", "#D8F6FD")
    ];
    return getOfferList;
  }

  static List<ModelCart> getAllCartList() {
    List<ModelCart> cartList = [];
    cartList.add(
        ModelCart(1, "Tomato", "#FCE8E2".toColor(), "sub1.png", "5.20", "1"));
    cartList.add(
        ModelCart(2, "Cabbage", "#E5FCE2".toColor(), "sub5.png", "4.30", "1"));
    cartList.add(ModelCart(
        3, "EggPlant", "#F5E2FC".toColor(), "sub7.png", "\$6.99", "1"));
    cartList.add(ModelCart(
        4, "Beet Root", "#FCE2E5".toColor(), "sub9.png", "\$6.99", "1"));
    return cartList;
  }



  static List<ModelMyOrder> getMyOrders() {
    List<ModelMyOrder> subList = [];

    ModelMyOrder model = ModelMyOrder();
    model.name = "Broccoli";
    model.colorBg = "#E5FCE2".toColor();
    model.image = "cat1.png";
    model.address = "Sean casey(4 km)";
    model.price = "5.20";
    model.offerPrice = "\$10";
    model.desc = "Female, 1.5 Years";
    model.status = "Pending";
    model.color = "#E09F2D".toColor();
    subList.add(model);


    model = ModelMyOrder();
    model.name = "Tomato";
    model.colorBg = "#FCE8E2".toColor();
    model.image = "sub1.png";
    model.address = "Sean casey(4 km)";
    model.price = "4.30";
    model.offerPrice = "\$10";
    model.desc = "Female, 1.5 Years";
    model.status = "Delivered";
    model.color = "#29BA4A".toColor();
    subList.add(model);



    model = ModelMyOrder();
    model.name = "Cabbage";
    model.colorBg = "#E5FCE2".toColor();
    model.image = "sub5.png";
    model.address = "Sean casey(4 km)";
    model.price = "6.99";
    model.offerPrice = "\$10";
    model.desc = "Female, 1.5 Years";
    model.status = "Cancelled";
    model.color = "#FB192D".toColor();
    subList.add(model);


    return subList;
  }


  static List<ModelCategory> getAllSubCategoryList() {
    List<ModelCategory> getOfferList = [
      ModelCategory(1, "cat1.png", "Broccoli", "#E5FCE2"),
      ModelCategory(2, "sub1.png", "Tomato", "#FCE8E2"),
      ModelCategory(3, "sub2.png", "Onion", "#FCE2EA"),
      ModelCategory(4, "sub3.png", "Potato", "#FCF5E2"),
      ModelCategory(5, "sub4.png", "Green Chilli", "#E5FCE2"),
      ModelCategory(6, "sub5.png", "Cabbage", "#E5FCE2"),
      ModelCategory(7, "sub6.png", "Carrot", "#FFEBE0"),
      ModelCategory(8, "sub7.png", "Eggplant", "#F5E2FC"),
      ModelCategory(9, "sub8.png", "Bottle Gourd", "#EDFCE2"),
      ModelCategory(10, "sub9.png", "Beet Route", "#FCE2E5"),
      ModelCategory(11, "sub10.png", "Garlic", "#E5FCE2"),
      ModelCategory(12, "sub11.png", "Cucumber", "#E5FCE2")
    ];
    return getOfferList;
  }

// static List<ModelIntro> getOfferLIst = [
//   ModelIntro(
//       1,
//       "Fresh Grocery\nFor You",
//       "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
//       "intro1.png"),
//   ModelIntro(
//       2,
//       "Choose From Our\nBest Menu",
//       "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
//       "intro2.png"),
//   ModelIntro(
//       2,
//       "Quick Delivery At\nYour Doorstep",
//       "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
//       "intro3.png")
// ];

}
