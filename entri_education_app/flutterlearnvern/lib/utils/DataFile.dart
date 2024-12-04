import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:flutterlearnvern/model/AboutModel.dart';
import 'package:flutterlearnvern/model/CourseModel.dart';
import 'package:flutterlearnvern/model/CurriculumModel.dart';
import 'package:flutterlearnvern/model/DescModel.dart';
import 'package:flutterlearnvern/model/DownloadModel.dart';
import 'package:flutterlearnvern/model/IncludeCourseModel.dart';
import 'package:flutterlearnvern/model/IntroModel.dart';
import 'package:flutterlearnvern/model/NotificationModel.dart';
import 'package:flutterlearnvern/model/ProgressModel.dart';
import 'package:flutterlearnvern/model/RankModel.dart';
import 'package:flutterlearnvern/model/SearchModel.dart';
import 'package:flutterlearnvern/model/SliderModel.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';

class DataFile {
  static List<NotificationModel> getNotificationList() {
    List<NotificationModel> subCatList = [];

    NotificationModel mainModel = new NotificationModel();
    mainModel.time = "08:30 PM";
    mainModel.title = "Lorem Ipsum";
    mainModel.desc =
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.";
    subCatList.add(mainModel);

    mainModel = new NotificationModel();
    mainModel.time = "08:30 PM";
    mainModel.title = "Lorem Ipsum";
    mainModel.desc =
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.";
    subCatList.add(mainModel);

    mainModel = new NotificationModel();
    mainModel.time = "08:30 PM";
    mainModel.title = "Lorem Ipsum";
    mainModel.desc =
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.";
    subCatList.add(mainModel);
    mainModel = new NotificationModel();
    mainModel.time = "08:30 PM";
    mainModel.title = "Lorem Ipsum";
    mainModel.desc =
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.";
    subCatList.add(mainModel);
    mainModel = new NotificationModel();
    mainModel.time = "08:30 PM";
    mainModel.title = "Lorem Ipsum";
    mainModel.desc =
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.";
    subCatList.add(mainModel);

    return subCatList;
  }




  static getSliderDetail() {
    List<SliderModel> list = [];

    SliderModel sliderModel = new SliderModel();
    sliderModel.id = 1;
    sliderModel.image = "slider_1.png";
    sliderModel.title = "Refer and Earn the Title of Educational Ambassador";
    sliderModel.colors = ["#595FD1".toColor(), "#888DF5".toColor()];

    list.add(sliderModel);

    sliderModel = new SliderModel();
    sliderModel.id = 2;
    sliderModel.image = "slider_2.png";
    sliderModel.title = "Free online courses with 100% quality videos";
    sliderModel.colors = ["#0065D0".toColor(), "#00D7DA".toColor()];

    list.add(sliderModel);

    sliderModel = new SliderModel();
    sliderModel.id = 3;
    sliderModel.image = "slider_3.png";
    sliderModel.title =
        "Step by Step Lesson Plans with visual Aids for easy understanding";
    sliderModel.colors = ["#14A5B8".toColor(), "#8662F5".toColor()];
    list.add(sliderModel);

    sliderModel = new SliderModel();
    sliderModel.id = 4;

    sliderModel.image = "slider_1.png";
    sliderModel.title = "Practice Tests for Progress Evaluation";
    sliderModel.colors = ["#EC97B3".toColor(), "#6667F6".toColor()];
    list.add(sliderModel);

    return list;
  }

  static getFeaturedList() {
    List<CourseModel> list = [];

    CourseModel model = new CourseModel();
    model.image = "feature_1.jpg";
    model.name = "Digital Marketing Course";
    model.subTitle = "Students Enrolled:91392";
    model.isFree = false;
    list.add(model);

    model = new CourseModel();
    model.image = "feature_2.jpg";
    model.name = "Python Programming Course";
    model.subTitle = "Students Enrolled:85633";
    list.add(model);

    model = new CourseModel();
    model.image = "feature_3.jpg";
    model.name = "Basic Android Course";
    model.subTitle = "Students Enrolled:55115";
    list.add(model);

    model = new CourseModel();
    model.image = "feature_4.jpg";
    model.isFree = false;
    model.name = "Basic Android Course";
    model.subTitle = "Students Enrolled:55115";
    list.add(model);

    model = new CourseModel();
    model.image = "feature_5.jpg";
    model.name = "AutoCAD Mechanical";
    model.subTitle = "Students Enrolled:52037";
    list.add(model);

    return list;
  }

  static getRecommendedList() {
    List<CourseModel> list = [];

    CourseModel model = new CourseModel();
    model.image = "feature_5.jpg";
    model.name = "Advanced PHP with MVC Programming with Practicals";
    model.subTitle = "Students Enrolled:52037";
    list.add(model);

    model = new CourseModel();
    model.image = "feature_4.jpg";
    model.name = "Basic Android Course";
    model.isFree = false;
    model.subTitle = "Students Enrolled:55115";
    list.add(model);

    model = new CourseModel();
    model.image = "feature_3.jpg";
    model.name = "Basic Android Course";
    model.subTitle = "Students Enrolled:55115";
    list.add(model);

    model = new CourseModel();
    model.image = "feature_2.jpg";
    model.isFree = false;
    model.name = "Python Programming Course";
    model.subTitle = "Students Enrolled:85633";
    list.add(model);

    model = new CourseModel();
    model.image = "feature_1.jpg";
    model.name = "Digital Marketing Course";
    model.subTitle = "Students Enrolled:91392";
    list.add(model);

    return list;
  }

  static getIncludeCourseList() {
    List<IncludeCourseModel> list = [];

    IncludeCourseModel model = new IncludeCourseModel();
    model.image = "video-camera.png";
    model.name = "hours video";
    model.timePeriods = 31;

    list.add(model);

    model = new IncludeCourseModel();
    model.image = "google-docs.png";
    model.name = "articles";
    model.timePeriods = 102;

    list.add(model);

    model = new IncludeCourseModel();
    model.image = "download.png";
    model.name = "downloads";
    model.timePeriods = 0;
    list.add(model);

    model = new IncludeCourseModel();
    model.image = "idea.png";
    model.name = "exercise";
    model.timePeriods = 15;
    list.add(model);

    model = new IncludeCourseModel();
    model.image = "sync.png";
    model.name = "Lifetime Access";
    model.timePeriods = -1;
    list.add(model);

    model = new IncludeCourseModel();
    model.image = "document.png";
    model.name = "Certificate(Optional)";
    model.timePeriods = -1;
    list.add(model);

    return list;
  }


  static getSettingList() {
    List<IncludeCourseModel> list = [];

    IncludeCourseModel model = new IncludeCourseModel();
    model.icon =Icons.tv_rounded;
    model.name = "My Courses";
    model.timePeriods = 31;

    list.add(model);

    model = new IncludeCourseModel();
    // model.image = "google-docs.png";
    model.icon =Icons.text_snippet_outlined;
    model.name = "My Certificates";
    model.timePeriods = 102;

    list.add(model);


    model = new IncludeCourseModel();
    model.image = "idea.png";
    model.icon =Icons.download_rounded;
    model.name = "My Downloads";
    model.timePeriods = 15;
    list.add(model);

    model = new IncludeCourseModel();
    model.image = "sync.png";
    model.icon =Icons.help_outline;
    model.name = "Contact Us";
    model.timePeriods = -1;
    list.add(model);

    model = new IncludeCourseModel();
    model.image = "document.png";
    model.icon =Icons.info_outline;

    model.name = "About Educational";
    model.timePeriods = -1;
    list.add(model);

    return list;
  }


  static String htmlData=r"<h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vestibulum sapien feugiat lorem tempor, id porta orci elementum. Fusce sed justo id arcu egestas congue. Fusce tincidunt lacus ipsum, in imperdiet felis ultricies eu. In ullamcorper risus felis, ac maximus dui bibendum vel. Integer ligula tortor, facilisis eu mauris ut, ultrices hendrerit ex. Donec scelerisque massa consequat, eleifend mauris eu, mollis dui. Donec placerat augue tortor, et tincidunt quam tempus non. Quisque sagittis enim nisi, eu condimentum lacus egestas ac. Nam facilisis luctus ipsum, at aliquam urna fermentum a. Quisque tortor dui, faucibus in ante eget, pellentesque mattis nibh. In augue dolor, euismod vitae eleifend nec, tempus vel urna. Donec vitae augue accumsan ligula fringilla ultrices et vel ex.</h5>";






  static getAboutList() {
    List<AboutModel> list = [];

    AboutModel model = new AboutModel();
    model.icon =Icons.info_outline;
    model.name = "About Educational";
    list.add(model);

    model = new AboutModel();
    model.icon =Icons.people_outline_rounded;
    model.name = "Employers";
    list.add(model);



    model = new AboutModel();
    model.icon =Icons.snippet_folder_outlined;
    model.name = "Privacy Policy";
    list.add(model);


    model = new AboutModel();
    model.icon =Icons.text_snippet_outlined;
    model.name = "Forum";
    list.add(model);


    return list;
  }
  static getCurriculumList() {
    List<CurriculumModel> list = [];





    CurriculumModel model = new CurriculumModel();
    model.name = "Introduction of Digital Marketing";

    list.add(model);

    model = new CurriculumModel();
    model.name = "Exploring a Digital Marketing";
    list.add(model);

    model = new CurriculumModel();
    model.name = "Digital Marketing Strategy";
    list.add(model);

    model = new CurriculumModel();
    model.name = "Starting with Website";
    list.add(model);

    model = new CurriculumModel();
    model.name = "SEO-Search Engine Optimization";
    list.add(model);


    model = new CurriculumModel();
    model.name = "Content Marketing";
    list.add(model);

    model = new CurriculumModel();
    model.name = "Social Media Marketing";
    list.add(model);

    model = new CurriculumModel();
    model.name = "Linkedin Marketing";
    list.add(model);

    model = new CurriculumModel();
    model.name = "How to earn Money As a Freelancer";
    list.add(model);

    model = new CurriculumModel();
    model.name = "Interview Q and A";
    list.add(model);

    model = new CurriculumModel();
    model.name = "Digital Marketing Master Quiz";
    list.add(model);


    return list;
  }


  static getDescList() {
      List<DescModel> list = [];





    DescModel model = new DescModel();
    model.name = "Pre-Requisites";
    model.subTitle = "Requirements to take up our free Digital Marketing Tutorial";
    model.detail = "Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.";
    list.add(model);

    model = new DescModel();
    model.name = "How can Educational Help?";
    model.subTitle = "Why Enrol with Educational to take the Digital marketing";
    model.detail = "Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.";
    list.add(model);




    return list;
  }


  static getDownloadList() {
    List<DownloadModel> list = [];

    DownloadModel model = new DownloadModel();
    model.name = "Digital Market Course";
    model.number =1;
    list.add(model);

    return list;
  }

  static getSearchTopicList() {
    List<String> list = [];


    list.add("Digital marketing course");
    list.add("Python programming course");
    list.add("MS Excel course");
    list.add("Graphic designing with photoshop");
    list.add("C Language basic to advance course");
    list.add("Basic android course");
    list.add("AutoCAD Mechanical");
    list.add("Advanced android course");
    list.add("WordPress course");

    return list;
  }

  static getSearchList() {
    List<SearchModel> list = [];

    SearchModel model = new SearchModel();
    model.name = "Business";
    model.detail = "6+ Courses";
    model.image = "search_image.jpg";
    list.add(model);

    model = new SearchModel();
    model.name = "Software Courses";
    model.detail = "35+ Courses";
    model.image = "search_1.jpg";
    list.add(model);

    model = new SearchModel();
    model.name = "Mechanical/civil/Electrical";
    model.detail = "8+ Courses";
    model.image = "search_2.jpg";
    list.add(model);

    model = new SearchModel();
    model.name = "Designing And Animation";
    model.detail = "8+ Courses";
    model.image = "search_3.jpg";
    list.add(model);

    model = new SearchModel();
    model.name = "Hardware and networking";
    model.detail = "3+ Courses";
    model.image = "search_4.jpg";
    list.add(model);

    model = new SearchModel();
    model.name = "Live Project";
    model.detail = "1+ Courses";
    model.image = "search_image.jpg";
    list.add(model);

    model = new SearchModel();
    model.name = "Free Webinar";
    model.detail = "28+ Courses";
    model.image = "search_1.jpg";
    list.add(model);



    return list;
  }



  static getRankList() {
    List<RankModel> list = [];

    RankModel model = new RankModel();
    model.name = "Sandeep Kumawat";
    model.desc = "“best online course for free in hindi.Easy and practical problem solving content.It's help me a lot.best online course for free in hindi.Easy and practical problem solving content.It's help me a lot.”";
    model.rate = 5;
    list.add(model);

    model = new RankModel();
    model.name = "Alisher Ansari";
    model.desc = "“best online course for free in hindi.Easy and practical problem solving content.It's help me a lot.”";
    model.rate = 5;
    list.add(model);

    model = new RankModel();
    model.name = "Varsha Taral";
    model.desc = "“best online course for free in hindi.Easy and practical problem solving content.It's help me a lot.”";
    model.rate = 4;
    list.add(model);


    model = new RankModel();
    model.name = "Dhruval Patel";
    model.desc = "“best online course for free in hindi.Easy and practical problem solving content.It's help me a lot.”";
    model.rate = 2;
    list.add(model);




    return list;
  }


  static getProgressModelList() {
    List<ProgressModel> progressModelList= [];




    ProgressModel model = new ProgressModel();
    model.name = "Introduction of Digital Marketing";
    model.detail = "7m 23s";
    model.progress = 3;
    model.isDownload = true;
    progressModelList.add(model);


    model = new ProgressModel();
    model.name = "How to Use Forums to Ask Questions";
    model.detail = "2m 2s";
    model.progress = 2;
    model.isDownload = false;
    progressModelList.add(model);


    model = new ProgressModel();
    model.name = "What is Digital Marketing";
    model.detail = "15m 5s";
    model.progress = 1;
    model.isDownload = false;
    progressModelList.add(model);

    model = new ProgressModel();
    model.name = "How do you do Digital Marketing research?";
    model.detail = "30m 13s";
    model.progress = 1;
    model.isDownload = false;
    progressModelList.add(model);


    model = new ProgressModel();
    model.name = "Assignment of Market Research";
    model.detail = "4m 24s";
    model.progress = 1;
    model.isDownload = false;
    progressModelList.add(model);

    model = new ProgressModel();
    model.name = "Introduction Quiz ";
    model.detail = "5m";
    model.progress = 5;
    model.isDownload = false;
    progressModelList.add(model);



    return progressModelList;
  }

  static List<IntroModel> getIntroModel(BuildContext context) {
    List<IntroModel> introList = [];

    IntroModel mainModel = new IntroModel();
    mainModel.id = 1;
    mainModel.name = "Teaching";

    mainModel.image = "intro_1.png";
    mainModel.desc =
    "Our new service makes it easy for you to work anywhere, there are new features will ready help you.";
    introList.add(mainModel);

    mainModel = new IntroModel();
    mainModel.id = 2;
    mainModel.name = "Learning";
    mainModel.image = "intro_2.png";
    mainModel.desc =
    "Our new service makes it easy for you to work anywhere, there are new features will ready help you.";
    introList.add(mainModel);

    mainModel = new IntroModel();
    mainModel.id = 3;
    mainModel.name = "Certificate";
    mainModel.image = "intro_3.png";
    mainModel.desc =
    "Our new service makes it easy for you to work anywhere, there are new features will ready help you.";
    introList.add(mainModel);

    return introList;
  }

}


 changeStatusColor(Color color) async {
  try {
    await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
    if (useWhiteForeground(color)) {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
      FlutterStatusbarcolor.setNavigationBarWhiteForeground(true);
    } else {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
      FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);
    }
  } on PlatformException catch (e) {
    debugPrint(e.toString());
  }
}

