import 'package:screen_sizer/app/models/model_creator.dart';
import 'package:screen_sizer/app/models/model_discover.dart';
import 'package:screen_sizer/app/models/model_intro.dart';
import 'package:screen_sizer/app/models/model_steps.dart';
import 'package:screen_sizer/app/models/model_trending.dart';
import 'package:screen_sizer/base/color_data.dart';
import 'package:screen_sizer/base/constant.dart';

import '../models/model_notification.dart';

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
  static List<ModelSteps> getAllStepsList() {
    List<ModelSteps> trendList = [];

    trendList.add(ModelSteps("Deposit ETH", "Send transaction with your wallet",
        "step1.svg", Constant.stepStatusActive));
    trendList.add(ModelSteps("Approve", "Checking balance and approving",
        "step2.svg", Constant.stepStatusNone));
    trendList.add(ModelSteps("Signature", "Create a signature to place bid",
        "step3.svg", Constant.stepStatusNone));

    return trendList;
  }

  static List<ModelNotification> getAllNotificationList() {
    List<ModelNotification> notificationList = [];

    notificationList.add(ModelNotification("ETH received", "0.2 ETH received",
        "notification1.png", "14:00 PM", true));
    notificationList.add(ModelNotification("New bid rotation", "0.002 ETH",
        "notification2.png", "08:20 PM", true));
    notificationList.add(ModelNotification(
        "ETH Received", "0.002 ETH", "notification3.png", "14:00 PM", true));

    return notificationList;
  }

  static List<ModelDiscover> getAllDiscoverList() {
    List<ModelDiscover> trendList = [];

    trendList.add(ModelDiscover(
        "profile_discover.png",
        "JeromeBell",
        "Creator",
        "Realistic Digital Art",
        "Ends in 06:25:09",
        "20.02",
        "discover1.png",
        ["img1.png", "img2.png"]));

    trendList.add(ModelDiscover(
        "profile_discover2.png",
        "Brooklyn Simmons",
        "Creator",
        "African Print",
        "Ends in 09:42:40",
        "18.04",
        "discover2.png",
        ["img1.png", "img2.png"]));

    return trendList;
  }

  static List<ModelTrending> getTrendingList() {
    List<ModelTrending> trendList = [];

    trendList.add(ModelTrending(
        "trend_img1.png", "Realistic Digital Art", "Jerome Bell", "20.02"));
    trendList.add(
        ModelTrending("trend_img2.png", "Graphic Art", "Jerome Bell", "20.02"));
    trendList.add(ModelTrending(
        "trend_img3.png", "Realistic Digital Art", "Jerome Bell", "20.02"));
    trendList.add(
        ModelTrending("trend_img1.png", "Graphic Art", "Jerome Bell", "20.02"));
    trendList.add(ModelTrending(
        "trend_img2.png", "Realistic Digital Art", "Jerome Bell", "20.02"));
    trendList.add(
        ModelTrending("trend_img3.png", "Graphic Art", "Jerome Bell", "20.02"));

    return trendList;
  }

  static List<ModelTrending> getTopCollection() {
    List<ModelTrending> trendList = [];

    trendList.add(ModelTrending(
        "top1.png", "Realistic Digital Art", "Leslie Alexander", "20.02",
        discount: "+59.05%", discountColor: greenColor));
    trendList.add(ModelTrending(
        "top2.png", "Gentle Unicorn", "Robert Fox", "24.08",
        discount: "-56.03%", discountColor: redColor));
    trendList.add(ModelTrending(
        "top3.png", "Africal Print", "Harry Fox", "73.06",
        discount: "+37.03%", discountColor: greenColor));
    trendList.add(ModelTrending(
          "collect1.png", "Star Print", "Jackson Alexander", "20.02",
        discount: "+59.05%", discountColor: greenColor));
    trendList.add(ModelTrending(
        "collect2.png", "Vector Graphics", "Robert Fox", "56.08",
        discount: "-56.03%", discountColor: redColor));
    trendList.add(ModelTrending(
        "collect3.png", "African Print", "Albert Flores", "78.06",
        discount: "+37.03%", discountColor: greenColor));
    trendList.add(ModelTrending(
        "collect4.png", "Digital Art", "Theresa Web", "28.06",
        discount: "+37.03%", discountColor: greenColor));
    trendList.add(ModelTrending(
        "collect5.png", "Royal Print", "Alexander Leslie", "45.02",
        discount: "+59.05%", discountColor: greenColor));
    trendList.add(ModelTrending(
        "collect6.png", "Colossal Print", "Warren Web", "56.06",
        discount: "+37.03%", discountColor: greenColor));
    trendList.add(ModelTrending(
        "collect7.png", "Addison Printing", "Thomas row", "25.02",
        discount: "+59.05%", discountColor: greenColor));
    return trendList;
  }

  static List<ModelCreator> getCreatorsList() {
    List<ModelCreator> trendList = [];

    trendList.add(
        ModelCreator("Leslie Alexander", "1.2M Followers", "Profile1.png"));
    trendList
        .add(ModelCreator("Albert Flores", "5.6M Followers", "Profile2.png"));
    trendList.add(
        ModelCreator("Leslie Alexander", "7.9M Followers", "profile_discover2.png"));
    trendList.add(
        ModelCreator("Leslie Alexander", "1.2M Followers", "profile_discover.png"));
    trendList
        .add(ModelCreator("Albert Flores", "5.6M Followers", "profile_detail.png"));
    trendList.add(
        ModelCreator("Leslie Alexander", "7.9M Followers", "Profile11.png"));
    trendList
        .add(ModelCreator("Albert Flores", "5.6M Followers", "Profile22.png"));
    trendList.add(
        ModelCreator("Leslie Alexander", "7.9M Followers", "Profile33.png"));

    return trendList;
  }

  static List<ModelIntro> introList = [
    ModelIntro(
        1,
        "Discover, Collect & Sell Awesome NFTS",
        "Digital art is an artistic work or practice that uses digital texhnology.",
        "intro1.png"),
    ModelIntro(
        2,
        "Make History In a New Digital World",
        "The techniques of digital art are used by the mainstream media in advertisements.",
        "intro2.png"),
    ModelIntro(
        2,
        "Enjoy Your Live Auction With NFT Arts",
        "NFT is a non-interchangeable unit of data stored on a blockchain of digital ledger.",
        "intro3.png")
  ];
}
