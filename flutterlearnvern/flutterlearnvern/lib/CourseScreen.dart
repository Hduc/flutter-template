import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterlearnvern/AddNewCardPage.dart';
import 'package:flutterlearnvern/model/CourseModel.dart';
import 'package:flutterlearnvern/model/CurriculumModel.dart';
import 'package:flutterlearnvern/model/IncludeCourseModel.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/DataFile.dart';
import 'package:readmore/readmore.dart';
import 'package:video_player/video_player.dart';
// import 'package:video_box/video_box.dart';

import 'DetailScreen.dart';
import 'HomeWidget.dart';
import 'MyDownloadScreen.dart';
import 'generated/l10n.dart';
import 'model/DescModel.dart';
import 'model/ProgressModel.dart';
import 'model/RankModel.dart';

class CourseScreen extends StatefulWidget {
  final CourseModel courseModel;

  CourseScreen(this.courseModel);

  @override
  _CourseScreen createState() {
    return _CourseScreen();
  }
}

class _CourseScreen extends State<CourseScreen> {
  CourseModel? courseModel = new CourseModel();
  List<IncludeCourseModel> includeCourseList = DataFile.getIncludeCourseList();
  List<CurriculumModel> curriculumModelList = DataFile.getCurriculumList();
  List<ProgressModel> progressModelList = DataFile.getProgressModelList();
  List<DescModel> descModelList = DataFile.getDescList();
  List<RankModel> rankList = DataFile.getRankList();

  ScrollController? scrollController;

  int tabPosition = 0;
  List<String> tabList = ["Curriculum", "Certificate", "Dashboard"];

  Future<bool> _requestPop() {
    // disposeVideo();
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  disposeVideo() {
    controller.dispose();
    }

  // VideoController? videoController;


  VideoPlayerController controller =
    // VideoPlayerController.network(
    //   'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    // ),
    VideoPlayerController.asset(
      ConstantData.assetPath + "java_cource.mp4",

  );

  @override
  void initState() {
    super.initState();

    ConstantData.setThemePosition();

    videoInit();

    courseModel = widget.courseModel;
    scrollController = ScrollController();
    scrollController!.addListener(_scrollListener);

    setState(() {});
  }

  videoInit() async {
    controller = VideoPlayerController. asset(
      // VideoPlayerController.network(
            ConstantData.assetPath + "java_cource.mp4")

      ..initialize();
  }

  bool isBottomVisible = false;

  _scrollListener() {
    if (scrollController!.offset >=
            scrollController!.position.maxScrollExtent &&
        !scrollController!.position.outOfRange) {
      setState(() {
        print("top---true");
        isBottomVisible = true;
      });
    }
    if (scrollController!.offset <=
            scrollController!.position.minScrollExtent &&
        !scrollController!.position.outOfRange) {
      setState(() {
        isBottomVisible = false;
      });
    }
  }

  @override
  void dispose() {
    disposeVideo();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double videoHeight = ConstantWidget.getScreenPercentSize(context, 35);
    double margin = ConstantWidget.getScreenPercentSize(context, 2);

    var _crossAxisSpacing = 1;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 2;
    var _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;

    var cellHeight = ConstantWidget.getScreenPercentSize(context, 4);

    var _aspectRatio = _width / cellHeight;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                S.of(context).courseDetails,
                textColor,
                TextAlign.left,
                FontWeight.bold,
                ConstantWidget.getScreenPercentSize(context, 2.5)),
            leading: IconButton(
              icon: Icon(
                CupertinoIcons.left_chevron,
                color: textColor,
              ),
              onPressed: _requestPop,
            ),
            actions: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.all(
                      ConstantWidget.getScreenPercentSize(context, 1)),
                  padding: EdgeInsets.symmetric(
                      vertical: ConstantWidget.getScreenPercentSize(context, 1),
                      horizontal:
                          ConstantWidget.getScreenPercentSize(context, 1.5)),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(
                          ConstantWidget.getScreenPercentSize(context, 1)))),
                  child: Row(
                    children: [
                      ConstantWidget.getTextWidget(
                          S.of(context).share,
                          Colors.black,
                          TextAlign.left,
                          FontWeight.bold,
                          ConstantWidget.getScreenPercentSize(context, 2)),
                      SizedBox(width: 5),
                      Image.asset(
                        ConstantData.assetImagesPath + "share.png",
                        color: Colors.black,
                        height: ConstantWidget.getScreenPercentSize(context, 2),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: videoHeight,
                    width: double.infinity,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: VideoPlayer(controller),

                    ),
                  ),
                  Expanded(
                    child: ListView(
                      controller: scrollController,

                      // padding: EdgeInsets.symmetric(horizontal: margin),
                      children: [
                        getContinueButton(),
                        Padding(
                          padding: EdgeInsets.all(margin),
                          child: ConstantWidget.getTextWidget(
                              courseModel!.name!,
                              textColor,
                              TextAlign.left,
                              FontWeight.bold,
                              ConstantWidget.getScreenPercentSize(
                                  context, 2.2)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: margin),
                          child: ConstantWidget.getCustomText(
                              courseModel!.detail!,
                              subTextColor,
                              3,
                              TextAlign.left,
                              FontWeight.w400,
                              ConstantWidget.getScreenPercentSize(
                                  context, 1.8)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: (margin * 1.5), horizontal: margin),
                          child: Row(
                            children: [
                              getCourseCell(
                                  Icons.g_translate, "हिंदी", Colors.black),
                              getCourseCell(
                                  Icons.star, "4.3(2656)", Colors.orange),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: margin),
                          child: ConstantWidget.getTextWidget(
                              S.of(context).thisCourseIncludes,
                              textColor,
                              TextAlign.left,
                              FontWeight.bold,
                              ConstantWidget.getScreenPercentSize(
                                  context, 2.2)),
                        ),
                        SizedBox(
                          height: margin,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: margin),
                          child: GridView.count(
                            crossAxisCount: _crossAxisCount,
                            shrinkWrap: true,
                            childAspectRatio: _aspectRatio,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: margin,
                            primary: false,
                            children: List.generate(includeCourseList.length,
                                (index) {
                              IncludeCourseModel model =
                                  includeCourseList[index];

                              return InkWell(
                                child: Container(
                                  height: cellHeight,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        ConstantData.assetImagesPath +
                                            model.image!,
                                        height: ConstantWidget.getPercentSize(
                                            cellHeight, 57),
                                        width: ConstantWidget.getPercentSize(
                                            cellHeight, 57),
                                        color: primaryColor,
                                      ),
                                      (model.timePeriods! > 0)
                                          ? Padding(
                                              padding: EdgeInsets.only(
                                                  left: ConstantWidget
                                                      .getScreenPercentSize(
                                                          context, 0.5)),
                                              child:
                                                  ConstantWidget.getTextWidget(
                                                      model.timePeriods
                                                          .toString(),
                                                      subTextColor,
                                                      TextAlign.left,
                                                      FontWeight.bold,
                                                      ConstantWidget
                                                          .getPercentSize(
                                                              cellHeight, 40)),
                                            )
                                          : Container(),
                                      SizedBox(
                                          width: ConstantWidget
                                              .getScreenPercentSize(
                                                  context, 0.7)),
                                     Expanded(child:  ConstantWidget.getTextWidget(
                                         model.name!,
                                         textColor,
                                         TextAlign.left,
                                         FontWeight.w600,
                                         ConstantWidget.getPercentSize(
                                             cellHeight, 40)))
                                    ],
                                  ),
                                ),
                                onTap: () {},
                              );
                            }),
                          ),
                        ),
                        SizedBox(
                          height: (margin * 2),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: margin),
                          child: Row(
                            children: [
                              getTabView(0),
                              getTabView(1),
                              getTabView(2),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: (margin),
                        ),
                        getTabWidget(),
                        SizedBox(
                          height: (margin * 2),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: margin),
                      child: getContinueButton(),
                    ),
                    visible: isBottomVisible,
                  )
                ],
              ),
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  getContinueButton() {
    double margin = ConstantWidget.getScreenPercentSize(context, 2);

    return InkWell(
      onTap: () {
        if (widget.courseModel.isFree!) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(courseModel!),
              ));
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddNewCardPage(),
              ));
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: margin),
        child: Container(
          margin:
              EdgeInsets.all(ConstantWidget.getScreenPercentSize(context, 1.2)),
          padding:
              EdgeInsets.all(ConstantWidget.getScreenPercentSize(context, 2)),
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(
                  ConstantWidget.getScreenPercentSize(context, 1)))),
          child: Center(
            child: ConstantWidget.getTextWidget(
                (widget.courseModel.isFree!)
                    ? S.of(context).clickHereToContinue
                    : "Enroll for Free",
                Colors.black,
                TextAlign.left,
                FontWeight.bold,
                ConstantWidget.getScreenPercentSize(context, 2)),
          ),
        ),
      ),
    );
  }

  getTabWidget() {
    if (tabPosition == 0) {
      return getFirstTab();
    } else if (tabPosition == 1) {
      return getSecondTab();
    } else if (tabPosition == 2) {
      return getThirdTab();
    }
  }

  getFirstTab() {
    double sliderHeight = ConstantWidget.getScreenPercentSize(context, 20);
    double radius1 = ConstantWidget.getPercentSize(sliderHeight, 12);
    double height = ConstantWidget.getScreenPercentSize(context, 5.9);
    double padding = ConstantWidget.getWidthPercentSize(context, 1.5);
    double margin = ConstantWidget.getScreenPercentSize(context, 2);
    double listHeight = ConstantWidget.getScreenPercentSize(context, 30);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      // shrinkWrap: true,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: curriculumModelList.length,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: margin),
          itemBuilder: (context, index) {
            String image;

            if (curriculumModelList[index].isExpand) {
              image = ConstantData.assetImagesPath + "up-arrow.png";
            } else {
              image = ConstantData.assetImagesPath +
                  "arrow-down-sign-to-navigate.png";
            }
            return Container(
              margin: EdgeInsets.symmetric(
                  vertical: ConstantWidget.getScreenPercentSize(context, 1)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (curriculumModelList[index].isExpand) {
                          curriculumModelList[index].isExpand = false;
                        } else {
                          curriculumModelList[index].isExpand = true;
                        }
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      height: height,
                      decoration: BoxDecoration(
                          color: cellColor,
                          borderRadius: BorderRadius.all(Radius.circular(
                              ConstantWidget.getPercentSize(height, 12)))),
                      child: Row(
                        children: [
                          Expanded(
                              child: ConstantWidget.getCustomText(
                                  (index + 1).toString() +
                                      ". " +
                                      curriculumModelList[index].name!,
                                  textColor,
                                  1,
                                  TextAlign.start,
                                  FontWeight.bold,
                                  ConstantWidget.getPercentSize(height, 32))),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      ConstantWidget.getWidthPercentSize(
                                          context, 1.5)),
                              child: Image.asset(
                                image,
                                color: textColor,
                                height:
                                    ConstantWidget.getPercentSize(height, 35),
                                width:
                                    ConstantWidget.getPercentSize(height, 35),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: padding),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: progressModelList.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, subIndex) {
                          ProgressModel model = progressModelList[subIndex];
                          var color = Colors.grey.shade200;
                          var downloadColor = Colors.grey.shade500;
                          var size =
                              ConstantWidget.getWidthPercentSize(context, 7);

                          if (model.isDownload!) {
                            downloadColor = Colors.indigoAccent;
                          }
                          if (model.progress == 1) {
                            color = Colors.grey.shade200;
                          } else if (model.progress == 2) {
                            color = Colors.orange;
                          } else if (model.progress == 3) {
                            color = Colors.green;
                          }
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailScreen(courseModel!),
                                  ));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: (padding * 1.5)),
                              child: Row(
                                children: [
                                  (model.progress != 5)
                                      ? Icon(
                                          Icons.play_circle_fill,
                                          size: size,
                                          color: color,
                                        )
                                      : Image.asset(
                                          ConstantData.assetImagesPath +
                                              "trophy.png",
                                          height: size,
                                          width: size,
                                          color: color,
                                        ),
                                  Expanded(
                                      child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: padding),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ConstantWidget.getCustomText(
                                            model.name!,
                                            textColor,
                                            1,
                                            TextAlign.start,
                                            FontWeight.w600,
                                            ConstantWidget.getPercentSize(
                                                height, 26)),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        ConstantWidget.getCustomText(
                                            model.detail!,
                                            Colors.grey.shade500,
                                            1,
                                            TextAlign.start,
                                            FontWeight.w600,
                                            ConstantWidget.getPercentSize(
                                                height, 26))
                                      ],
                                    ),
                                  )),
                                  (model.progress != 5)
                                      ? Icon(
                                          Icons.download_rounded,
                                          size: (size / 1.3),
                                          color: downloadColor,
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      visible: curriculumModelList[index].isExpand)
                ],
              ),
            );
          },
        ),
        Container(
            height: sliderHeight,
            padding: EdgeInsets.symmetric(horizontal: (margin)),
            margin: EdgeInsets.symmetric(horizontal: (margin)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(radius1)),
                image: DecorationImage(
                  image: new ExactAssetImage(
                    ConstantData.assetImagesPath + "banner.jpg",
                  ),
                  fit: BoxFit.cover,
                ))),
        Padding(
          padding: EdgeInsets.all(margin),
          child: ConstantWidget.getTextWidget(
              "Overview",
              textColor,
              TextAlign.left,
              FontWeight.bold,
              ConstantWidget.getScreenPercentSize(context, 2.2)),
        ),
        Padding(
          padding:
              EdgeInsets.only(bottom: (margin), left: margin, right: margin),
          child: ConstantWidget.getTextWidget(
              "Digital marketing Tutorial in hindi for Free",
              textColor,
              TextAlign.left,
              FontWeight.w500,
              ConstantWidget.getScreenPercentSize(context, 2.2)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: margin),
          child: ReadMoreText(
            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
            trimLines: 2,
            colorClickableText: primaryColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
            style: TextStyle(
                color: subTextColor,
                fontSize: ConstantWidget.getScreenPercentSize(context, 1.8),
                fontWeight: FontWeight.w400),
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(
                color: primaryColor,
                fontSize: ConstantWidget.getScreenPercentSize(context, 1.8),
                fontWeight: FontWeight.bold),
            lessStyle: TextStyle(
                color: primaryColor,
                fontSize: ConstantWidget.getScreenPercentSize(context, 1.8),
                fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: descModelList.length,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(margin),
          itemBuilder: (context, index) {
            String image;

            if (descModelList[index].isExpand!) {
              image = ConstantData.assetImagesPath + "up-arrow.png";
            } else {
              image = ConstantData.assetImagesPath +
                  "arrow-down-sign-to-navigate.png";
            }
            return Container(
              margin: EdgeInsets.symmetric(
                  vertical: ConstantWidget.getScreenPercentSize(context, 1)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (descModelList[index].isExpand!) {
                          descModelList[index].isExpand = false;
                        } else {
                          descModelList[index].isExpand = true;
                        }
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      height: height,
                      decoration: BoxDecoration(
                          color: cellColor,
                          borderRadius: BorderRadius.all(Radius.circular(
                              ConstantWidget.getPercentSize(height, 12)))),
                      child: Row(
                        children: [
                          Expanded(
                              child: ConstantWidget.getCustomText(
                                  descModelList[index].name!,
                                  textColor,
                                  1,
                                  TextAlign.start,
                                  FontWeight.bold,
                                  ConstantWidget.getPercentSize(height, 32))),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      ConstantWidget.getWidthPercentSize(
                                          context, 1.5)),
                              child: Image.asset(
                                image,
                                color: textColor,
                                height:
                                    ConstantWidget.getPercentSize(height, 35),
                                width:
                                    ConstantWidget.getPercentSize(height, 35),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                      child: Column(
                        children: [
                          SizedBox(height: margin),
                          ConstantWidget.getTextWidget(
                              descModelList[index].subTitle!,
                              textColor,
                              TextAlign.start,
                              FontWeight.bold,
                              ConstantWidget.getPercentSize(height, 32)),
                          SizedBox(height: margin),
                          ConstantWidget.getTextWidget(
                              descModelList[index].detail!,
                              textColor,
                              TextAlign.start,
                              FontWeight.w500,
                              ConstantWidget.getPercentSize(height, 28))
                        ],
                      ),
                      visible: descModelList[index].isExpand!)
                ],
              ),
            );
          },
        ),
        SizedBox(height: margin),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all((margin)),
            child: ConstantWidget.getTextWidget(
                S.of(context).fromTheLearnvernCommunity,
                primaryColor,
                TextAlign.left,
                FontWeight.bold,
                ConstantWidget.getScreenPercentSize(context, 2.2)),
          ),
        ),
        Container(
          height: listHeight,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: rankList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              double circleSize = ConstantWidget.getPercentSize(listHeight, 17);
              double icon = ConstantWidget.getScreenPercentSize(context, 3.5);

              return Container(
                  width: ConstantWidget.getWidthPercentSize(context, 75),
                  margin: EdgeInsets.only(
                      bottom: ConstantWidget.getScreenPercentSize(context, 1),
                      left: margin,
                      right: margin),
                  padding: EdgeInsets.all(padding * 2),
                  decoration: BoxDecoration(
                      color: cellColor,
                      borderRadius: BorderRadius.all(Radius.circular(
                          ConstantWidget.getPercentSize(listHeight, 3))),
                      border: Border.all(color: Colors.grey, width: 0.3)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: circleSize,
                            width: circleSize,
                            margin: EdgeInsets.only(right: (padding * 1.2)),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade600,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 1),
                                    blurRadius: 2.0)
                              ],
                            ),
                            child: Center(
                              child: ConstantWidget.getTextWidget(
                                  rankList[index].name![0].toString(),
                                  Colors.white,
                                  TextAlign.center,
                                  FontWeight.bold,
                                  ConstantWidget.getPercentSize(
                                      circleSize, 35)),
                            ),
                          ),
                          Expanded(
                              child: ConstantWidget.getTextWidget(
                                  rankList[index].name!,
                                  textColor,
                                  TextAlign.start,
                                  FontWeight.w800,
                                  ConstantWidget.getPercentSize(
                                      listHeight, 5.5)))
                        ],
                      ),
                      SizedBox(
                        height: (padding * 1.5),
                      ),
                      Expanded(
                          child: ConstantWidget.getTextWidget(
                              rankList[index].desc!,
                              textColor,
                              TextAlign.start,
                              FontWeight.w400,
                              ConstantWidget.getPercentSize(listHeight, 6))),
                      SizedBox(
                        height: padding,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: RatingBar.builder(
                          itemSize: icon,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          tapOnlyMode: false,
                          initialRating: 2,
                          updateOnDrag: false,
                          itemPadding: EdgeInsets.zero,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: icon,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      )
                    ],
                  ));
            },
          ),
        ),
        SizedBox(height: margin),
      ],
    );
  }

  getSecondTab() {
    double height = ConstantWidget.getWidthPercentSize(context, 40);
    double width = ConstantWidget.getPercentSize(height, 2);
    double padding = ConstantWidget.getScreenPercentSize(context, 3);
    double margin = ConstantWidget.getScreenPercentSize(context, 2);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ConstantWidget.getTextWidget(
              S.of(context).toApplyForNsdcSkillIndiaCertificateYouMustUpgrade,
              Colors.grey,
              TextAlign.center,
              FontWeight.w600,
              ConstantWidget.getScreenPercentSize(context, 2)),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: padding),
              height: height,
              width: height,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: width),
                  image: DecorationImage(
                    image: new ExactAssetImage(
                      ConstantData.assetImagesPath + "certificate.jpg",
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: ConstantWidget.getScreenPercentSize(context, 1.2),
                  horizontal: ConstantWidget.getWidthPercentSize(context, 20)),
              padding: EdgeInsets.all(
                  ConstantWidget.getScreenPercentSize(context, 2)),
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(
                      ConstantWidget.getScreenPercentSize(context, 1)))),
              child: Center(
                child: ConstantWidget.getTextWidget(
                    S.of(context).upgradeToCertify,
                    Colors.white,
                    TextAlign.center,
                    FontWeight.bold,
                    ConstantWidget.getScreenPercentSize(context, 2)),
              ),
            ),
          )
        ],
      ),
    );
  }

  getThirdTab() {
    double padding = ConstantWidget.getWidthPercentSize(context, 3);
    double margin = ConstantWidget.getScreenPercentSize(context, 2);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: Row(
        children: [
          getButton("My Downloads", "View all your Downloads Here",
              Icons.download_rounded, () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyDownloadScreen(),
                ));
          }),
          SizedBox(
            width: padding,
          ),
          getButton(
              "My Courses", "View all Enrolled Courses Here", Icons.tv_rounded,
              () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeWidget(2),
                ));
          }),
        ],
      ),
    );
  }

  getButton(String s, String s1, var icon, Function function) {
    double height = ConstantWidget.getScreenPercentSize(context, 3);

    return Expanded(
        child: InkWell(
      onTap: () {
        function();
      },
      child: Container(
        decoration: BoxDecoration(
            color: cellColor,
            borderRadius: BorderRadius.all(Radius.circular(
                ConstantWidget.getScreenPercentSize(context, 0.8))),
            border: Border.all(color: Colors.grey, width: 0.3)),
        padding: EdgeInsets.symmetric(
            horizontal: ConstantWidget.getWidthPercentSize(context, 2),
            vertical: ConstantWidget.getScreenPercentSize(context, 0.6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: (height),
              color: primaryColor,
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConstantWidget.getCustomText(
                    s,
                    textColor,
                    1,
                    TextAlign.start,
                    FontWeight.w600,
                    ConstantWidget.getScreenPercentSize(context, 2)),
                SizedBox(
                  height: 2,
                ),
                ConstantWidget.getCustomText(
                    s1,
                    subTextColor,
                    2,
                    TextAlign.start,
                    FontWeight.w600,
                    ConstantWidget.getScreenPercentSize(context, 1.4)),
              ],
            ))
          ],
        ),
      ),
    ));
  }

  getTabView(int position) {
    double height = ConstantWidget.getScreenPercentSize(context, 4.5);
    double dividerHeight = ConstantWidget.getPercentSize(height, 20);

    return Expanded(
        child: InkWell(
      onTap: () {
        setState(() {
          tabPosition = position;
        });
      },
      child: Container(
        height: height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ConstantWidget.getTextWidget(
                  tabList[position],
                  (tabPosition == position) ? textColor : subTextColor,
                  TextAlign.center,
                  (tabPosition == position) ? FontWeight.bold : FontWeight.w300,
                  ConstantWidget.getScreenPercentSize(context, 2)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: dividerHeight,
                width: double.infinity,
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: (tabPosition == position)
                            ? ConstantWidget.getScreenPercentSize(context, 2)
                            : ConstantWidget.getScreenPercentSize(
                                context, 0.01),
                        decoration: BoxDecoration(
                            color: tabPosition == position
                                ? Colors.amberAccent
                                : textColor,
                            borderRadius: BorderRadius.all(Radius.circular(
                                tabPosition == position ? 5 : 0))),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  getCourseCell(var icon, String s, var color) {
    double size = ConstantWidget.getScreenPercentSize(context, 5.5);
    double margin = ConstantWidget.getScreenPercentSize(context, 1.5);

    return Expanded(
      child: Row(
        children: [
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 0.3)),
            child: Center(
              child: Icon(icon,
                  color: color, size: ConstantWidget.getPercentSize(size, 50)),
            ),
          ),
          SizedBox(width: (margin)),
          ConstantWidget.getTextWidget(
              s,
              subTextColor,
              TextAlign.left,
              FontWeight.w500,
              ConstantWidget.getScreenPercentSize(context, 2.2)),
        ],
      ),
    );
  }
}
