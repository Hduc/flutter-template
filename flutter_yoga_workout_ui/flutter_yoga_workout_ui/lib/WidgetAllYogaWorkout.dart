import 'package:flutter/material.dart';
import 'package:workout/ColorCategory.dart';

import 'ConstantWidget.dart';
import 'Constants.dart';
import 'SizeConfig.dart';
import 'WidgetWorkoutExerciseList.dart';
import 'generated/l10n.dart';

import 'online_models/ModelWorkout.dart';

class WidgetAllYogaWorkout extends StatefulWidget {
  WidgetAllYogaWorkout();

  @override
  _WidgetAllYogaWorkout createState() => _WidgetAllYogaWorkout();
}

class _WidgetAllYogaWorkout extends State<WidgetAllYogaWorkout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double screenWidth = SizeConfig.safeBlockHorizontal! * 100;

    int _crossAxisCount = 2;
    double _crossAxisSpacing = ConstantWidget.getScreenPercentSize(context, 2);
    var widthItem =
        (screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
            _crossAxisCount;
    double height = ConstantWidget.getScreenPercentSize(context, 30);

    double _aspectRatio = widthItem / height;




    return WillPopScope(
      child: Scaffold(
        backgroundColor: bgDarkWhite,
        appBar: getColorStatusBar(bgDarkWhite),
        body: SafeArea(
            child: Column(
          children: [
            ConstantWidget.getLoginAppBar(
              context,
              function: () {
                onBackClicked();
              },
              title: S.of(context).yoga,
            ),
            Expanded(
              flex: 1,

              // child: FutureBuilder<ModelWorkout?>(
              //   future: getYogaWorkout(context),
              //   builder: (context, snapshot) {
              //     print("getworkouts123=${snapshot.data}");
              //
              //     if (snapshot.hasData && snapshot.data != null) {
              //       ModelWorkout? modelWorkout = snapshot.data;
              //
              //       if (modelWorkout!.data!.success == 1) {
              //         List<Category>? workoutList = modelWorkout.data!.category;
              //
              //         return GridView.count(
              //           crossAxisCount: _crossAxisCount,
              //           childAspectRatio: _aspectRatio,
              //           shrinkWrap: true,
              //           crossAxisSpacing: _crossAxisSpacing,
              //           mainAxisSpacing: _crossAxisSpacing,
              //           padding: EdgeInsets.only(
              //             //
              //             left: _crossAxisSpacing,
              //             right: _crossAxisSpacing,
              //             //     bottom: _crossAxisSpacing
              //           ),
              //           primary: false,
              //           children: List.generate(workoutList!.length, (index) {
              //             Category _modelWorkoutList = workoutList[index];
              //
              //             ModelDummySend dummySend = new ModelDummySend(
              //                 _modelWorkoutList.categoryId!,
              //                 _modelWorkoutList.category!,
              //                 ConstantUrl.urlGetWorkoutExercise,
              //                 ConstantUrl.varCatId,
              //                 getCellColor(index),
              //                 _modelWorkoutList.image!,true,_modelWorkoutList.description!,CATEGORY_WORKOUT);
              //
              //             return Container(
              //               height: height,
              //               width:
              //                   ConstantWidget.getWidthPercentSize(context, 33),
              //               decoration: getDefaultDecoration(
              //                   radius:
              //                       ConstantWidget.getPercentSize(height, 8),
              //                   bgColor: getCellColor(index)),
              //
              //               child: InkWell(
              //                 // child: Hero(
              //                 //     tag: _modelWorkoutList
              //                 //         .categoryId!,
              //                 //     child: Container(
              //                 //       margin: EdgeInsets
              //                 //           .only(
              //                 //           left: 18,
              //                 //           top: 12,
              //                 //           bottom:
              //                 //           12,
              //                 //           right:
              //                 //           12),
              //                 //       width: double
              //                 //           .infinity,
              //                 //       height: SizeConfig
              //                 //           .safeBlockHorizontal! *
              //                 //           30,
              //                 //       child: Stack(
              //                 //         children: [
              //                 //           Padding(
              //                 //             padding: EdgeInsets
              //                 //                 .only(
              //                 //                 top: 10,
              //                 //                 bottom:
              //                 //                 10),
              //                 //             child:
              //                 //             Container(
              //                 //               width: double
              //                 //                   .infinity,
              //                 //               height: double
              //                 //                   .infinity,
              //                 //               // color: Colors.white,
              //                 //               decoration: BoxDecoration(
              //                 //                   borderRadius: BorderRadius
              //                 //                       .circular(
              //                 //                       12),
              //                 //                   boxShadow: [
              //                 //                     BoxShadow(
              //                 //                       color: Colors
              //                 //                           .grey,
              //                 //                       offset: Offset(
              //                 //                           0.0,
              //                 //                           1.0),
              //                 //                       //(x,y)
              //                 //                       blurRadius: 1.0,
              //                 //                     ),
              //                 //                   ],
              //                 //                   color: Colors
              //                 //                       .white),
              //                 //               child:
              //                 //               Row(
              //                 //                 mainAxisSize:
              //                 //                 MainAxisSize
              //                 //                     .max,
              //                 //                 children: [
              //                 //                   ClipRRect(
              //                 //                       borderRadius: BorderRadius
              //                 //                           .only(
              //                 //                           topLeft: Radius
              //                 //                               .circular(
              //                 //                               12),
              //                 //                           bottomLeft: Radius
              //                 //                               .circular(
              //                 //                               12)),
              //                 //                       child: Image
              //                 //                           .network(
              //                 //                         ConstantUrl
              //                 //                             .uploadUrl +
              //                 //                             _modelWorkoutList
              //                 //                                 .image!,
              //                 //                         width: SizeConfig
              //                 //                             .safeBlockHorizontal! *
              //                 //                             38,
              //                 //                         height: double
              //                 //                             .infinity,
              //                 //                         fit: BoxFit
              //                 //                             .fill,
              //                 //                       )),
              //                 //                   Expanded(
              //                 //                     child:
              //                 //                     Container(
              //                 //                       width: double
              //                 //                           .infinity,
              //                 //                       height: double
              //                 //                           .infinity,
              //                 //                       margin: EdgeInsets
              //                 //                           .only(
              //                 //                           top: 10,
              //                 //                           bottom: 10),
              //                 //                       padding: EdgeInsets
              //                 //                           .only(
              //                 //                           left: 15,
              //                 //                           right: 15,
              //                 //                           top: 7,
              //                 //                           bottom: 7),
              //                 //                       child: Row(
              //                 //                         mainAxisAlignment: MainAxisAlignment
              //                 //                             .start,
              //                 //                         children: [
              //                 //                           Expanded(
              //                 //                             child: Column(
              //                 //                               mainAxisAlignment: MainAxisAlignment
              //                 //                                   .center,
              //                 //                               crossAxisAlignment: CrossAxisAlignment
              //                 //                                   .start,
              //                 //                               children: [
              //                 //                                 getCustomText(
              //                 //                                     "${_modelWorkoutList
              //                 //                                         .category}",
              //                 //                                     Colors
              //                 //                                         .black,
              //                 //                                     1,
              //                 //                                     TextAlign
              //                 //                                         .center,
              //                 //                                     FontWeight
              //                 //                                         .bold,
              //                 //                                     Constants
              //                 //                                         .getPercentSize(
              //                 //                                         SizeConfig
              //                 //                                             .safeBlockHorizontal! *
              //                 //                                             30,
              //                 //                                         16)),
              //                 //                                 getCustomText(
              //                 //                                     S
              //                 //                                         .of(
              //                 //                                         context)
              //                 //                                         .transformation,
              //                 //                                     Colors
              //                 //                                         .black87,
              //                 //                                     3,
              //                 //                                     TextAlign
              //                 //                                         .start,
              //                 //                                     FontWeight
              //                 //                                         .w300,
              //                 //                                     Constants
              //                 //                                         .getPercentSize(
              //                 //                                         SizeConfig
              //                 //                                             .safeBlockHorizontal! *
              //                 //                                             30,
              //                 //                                         12))
              //                 //                               ],
              //                 //                             ),
              //                 //                             flex: 1,
              //                 //                           )
              //                 //                         ],
              //                 //                       ),
              //                 //                     ),
              //                 //                     flex:
              //                 //                     1,
              //                 //                   )
              //                 //                 ],
              //                 //               ),
              //                 //             ),
              //                 //           ),
              //                 //         ],
              //                 //       ),
              //                 //     )),
              //
              //                 child: Container(
              //                   child: Column(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     crossAxisAlignment: CrossAxisAlignment.center,
              //                     children: [
              //                       Hero(
              //                         tag: _modelWorkoutList.image ?? "anim1",
              //                         child: Image.network(
              //                           '${ConstantUrl.uploadUrl + _modelWorkoutList.image!}',
              //                           height: ConstantWidget.getPercentSize(
              //                               height, 45),
              //                         ),
              //                       ),
              //                       SizedBox(
              //                         height: ConstantWidget.getPercentSize(
              //                             height, 12),
              //                       ),
              //                       Padding(
              //                         padding: EdgeInsets.symmetric(
              //                             vertical:
              //                                 ConstantWidget.getPercentSize(
              //                                     height, 2)),
              //                         child:
              //                             ConstantWidget.getTextWidgetWithFont(
              //                                 _modelWorkoutList.category!,
              //                                 textColor,
              //                                 TextAlign.start,
              //                                 FontWeight.bold,
              //                                 ConstantWidget.getPercentSize(
              //                                     height, 7),
              //                                 Constants.fontsFamily),
              //                       ),
              //                       FutureBuilder<int?>(
              //                         future:
              //                             getTotalExercise(context, dummySend),
              //                         builder: (context, snapshot) {
              //                           int totalExercise = 0;
              //                           if (snapshot.hasData) {
              //                             totalExercise = snapshot.data!;
              //                           } else {
              //                             totalExercise = 0;
              //                           }
              //
              //                           return ConstantWidget.getTextWidgetWithFont(
              //                               "$totalExercise ${S.of(context).exercises}",
              //                               textColor,
              //                               TextAlign.start,
              //                               FontWeight.w400,
              //                               Constants.getPercentSize(height, 7),
              //                               Constants.fontsFamily);
              //                         },
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //                 onTap: () {
              //                   print("sendtidetail1==true");
              //                   sendToWorkoutList(context, _modelWorkoutList,
              //                       getCellColor(index));
              //                 },
              //               ),
              //             );
              //           }),
              //         );
              //       } else {
              //         return getNoData(context);
              //       }
              //     } else {
              //       return getProgressDialog();
              //     }
              //   },
              // ),

              child:      GridView.count(
              crossAxisCount: _crossAxisCount,
              childAspectRatio: _aspectRatio,
              shrinkWrap: true,
              crossAxisSpacing: _crossAxisSpacing,
              mainAxisSpacing: _crossAxisSpacing,
              padding: EdgeInsets.only(
                //
                left: _crossAxisSpacing,
                right: _crossAxisSpacing,
                //     bottom: _crossAxisSpacing
              ),
              primary: false,
              children: List.generate(8, (index) {

                // ModelDummySend dummySend = new ModelDummySend(
                //     _modelWorkoutList.categoryId!,
                //     _modelWorkoutList.category!,
                //     ConstantUrl.urlGetWorkoutExercise,
                //     ConstantUrl.varCatId,
                //     getCellColor(index),
                //     _modelWorkoutList.image!,true,_modelWorkoutList.description!,CATEGORY_WORKOUT);

                return Container(
                  height: height,
                  width:
                  ConstantWidget.getWidthPercentSize(context, 33),
                  decoration: getDefaultDecoration(
                      radius:
                      ConstantWidget.getPercentSize(height, 8),
                      bgColor: getCellColor(index)),

                  child: InkWell(


                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Hero(
                            tag: 'yoga_1.png' ,
                            child: Image.asset(
                              '${Constants.assetsImagePath + 'yoga_${(index+1)}.png'}',
                              height: ConstantWidget.getPercentSize(
                                  height, 55),
                            ),
                          ),
                          SizedBox(
                            height: ConstantWidget.getPercentSize(
                                height, 5),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                ConstantWidget.getPercentSize(
                                    height, 2)),
                            child:
                            ConstantWidget.getTextWidgetWithFont(
                                'Yoga',
                                textColor,
                                TextAlign.start,
                                FontWeight.bold,
                                ConstantWidget.getPercentSize(
                                    height, 7),
                                Constants.fontsFamily),
                          ),
                          // FutureBuilder<int?>(
                          //   future:
                          //   getTotalExercise(context, dummySend),
                          //   builder: (context, snapshot) {
                          //     int totalExercise = 0;
                          //     if (snapshot.hasData) {
                          //       totalExercise = snapshot.data!;
                          //     } else {
                          //       totalExercise = 0;
                          //     }
                          //
                          //     return ConstantWidget.getTextWidgetWithFont(
                          //         "$totalExercise ${S.of(context).exercises}",
                          //         textColor,
                          //         TextAlign.start,
                          //         FontWeight.w400,
                          //         Constants.getPercentSize(height, 7),
                          //         Constants.fontsFamily);
                          //   },
                          // ),
                          ConstantWidget.getTextWidgetWithFont(
                              "12 ${S.of(context).exercises}",
                              textColor,
                              TextAlign.start,
                              FontWeight.w400,
                              Constants.getPercentSize(height, 7),
                              Constants.fontsFamily)
                        ],
                      ),
                    ),
                    onTap: () {
                      print("sendtidetail1==true");
                      // sendToWorkoutList(context, _modelWorkoutList,
                      //     getCellColor(index));
                    },
                  ),
                );
              }),
            ),
              // child: FutureBuilder<List<ModelYogaList>?>(
              //   future: _dataHelper.getYogaList(),
              //   builder: (context, snapshot) {
              //     if (snapshot.hasData &&
              //         snapshot.connectionState == ConnectionState.done) {
              //       List<ModelYogaList> workoutList = snapshot.data!;
              //       return GridView.count(
              //         crossAxisCount: _crossAxisCount,
              //         childAspectRatio: _aspectRatio,
              //         shrinkWrap: true,
              //         padding: EdgeInsets.only(
              //             left: _crossAxisSpacing,
              //             right: _crossAxisSpacing,
              //             bottom: _crossAxisSpacing),
              //         primary: false,
              //         children: List.generate(workoutList.length, (index) {
              //           ModelYogaList _workoutList = workoutList[index];
              //
              //           return InkWell(
              //             child: Container(
              //               height: double.infinity,
              //               margin: EdgeInsets.all(7),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.all(Radius.circular(10)),
              //                 color: Colors.transparent,
              //               ),
              //               child: Column(
              //                 children: [
              //                   Container(
              //                       padding: EdgeInsets.only(
              //                           bottom:
              //                           Constants.getPercentSize(widthItem, 5)),
              //                       height: imgHeight,
              //                       decoration: BoxDecoration(
              //                         boxShadow: [
              //                           BoxShadow(
              //                             color: Colors.grey,
              //                             offset: Offset(0.0, 1.5), //(x,y)
              //                             blurRadius: 2.5,
              //                           ),
              //                         ],
              //                         image: DecorationImage(
              //                             image: AssetImage(
              //                               Constants.assetsImagePath +
              //                                   _workoutList.image!,
              //                             ),
              //                             fit: BoxFit.cover),
              //                         borderRadius: BorderRadius.all(
              //                           Radius.circular(
              //                               Constants.getPercentSize(imgHeight, 8)),
              //                         ),
              //                       ),
              //                       child: Align(
              //                         alignment: Alignment.bottomCenter,
              //                         child: Container(
              //                           height: titleHeight,
              //                           margin: EdgeInsets.symmetric(
              //                               horizontal: Constants.getPercentSize(
              //                                   widthItem, 5)),
              //                           padding: EdgeInsets.symmetric(
              //                               horizontal: Constants.getPercentSize(
              //                                   widthItem, 5)),
              //                           decoration: BoxDecoration(
              //                             color: Colors.white70,
              //                             borderRadius: BorderRadius.all(
              //                               Radius.circular(
              //                                   Constants.getPercentSize(
              //                                       widthItem, 3)),
              //                             ),
              //                           ),
              //                           child: Center(
              //                             child: ConstantWidget
              //                                 .getTextWidgetWithFontWithMaxLine1(
              //                                 _workoutList.name!.toUpperCase(),
              //                                 Colors.black87,
              //                                 TextAlign.center,
              //                                 FontWeight.bold,
              //                                 ConstantWidget.getPercentSize(
              //                                     titleHeight, 38),
              //                                 Constants.boldFontsFamily),
              //                           ),
              //                         ),
              //                       )),
              //                   Container(
              //                     width: double.infinity,
              //                     padding: EdgeInsets.symmetric(
              //                         vertical: Constants.getPercentSize(height, 2),
              //                         horizontal:
              //                         Constants.getPercentSize(height, 2.8)),
              //                     child: Column(
              //                       children: [
              //                         SizedBox(
              //                           height: Constants.getPercentSize(
              //                               remainHeight, 4),
              //                         ),
              //                         Row(
              //                           crossAxisAlignment:
              //                           CrossAxisAlignment.center,
              //                           children: [
              //                             Image.asset(
              //                               Constants.assetsImagePath +
              //                                   "dumbbell.png",
              //                               height: iconSize,
              //                               width: iconSize,
              //                               color: Colors.black,
              //                             ),
              //                             SizedBox(
              //                                 width: ConstantWidget.getPercentSize(
              //                                     sWidth, 5)),
              //                             ConstantWidget.getTextWidget(
              //                                 Constants.getLevelName(
              //                                     _workoutList.levelType ??
              //                                         Constants.levelBeginner,
              //                                     context),
              //                                 Colors.black,
              //                                 TextAlign.start,
              //                                 FontWeight.w600,
              //                                 ConstantWidget.getPercentSize(
              //                                     remainHeight, 15)),
              //                           ],
              //                         ),
              //                         SizedBox(
              //                           height: Constants.getPercentSize(
              //                               remainHeight, 6),
              //                         ),
              //                         Row(
              //                           crossAxisAlignment:
              //                           CrossAxisAlignment.center,
              //                           mainAxisAlignment: MainAxisAlignment.start,
              //                           children: [
              //                             Image.asset(
              //                               Constants.assetsImagePath +
              //                                   "calendar.png",
              //                               height: iconSize,
              //                               width: iconSize,
              //                               color: Colors.black,
              //                             ),
              //                             SizedBox(
              //                                 width: Constants.getPercentSize(
              //                                     sWidth, 5)),
              //                             FutureBuilder<
              //                                 List<ModelWorkoutExerciseList>?>(
              //                               future: _dataHelper
              //                                   .getWorkoutExerciseListByTableAndId(
              //                                   _workoutList.id!,
              //                                   // height.id!,
              //                                   Constants.getTableNames(
              //                                       Constants
              //                                           .yogaStyleWorkoutId)),
              //                               builder: (context, snapshot) {
              //                                 String s = "";
              //                                 if (snapshot.hasData) {
              //                                   s = snapshot.data!.length
              //                                       .toString() +
              //                                       " Workouts";
              //                                 }
              //                                 return ConstantWidget.getTextWidget(
              //                                     s,
              //                                     Colors.black,
              //                                     TextAlign.start,
              //                                     FontWeight.w600,
              //                                     ConstantWidget.getPercentSize(
              //                                         remainHeight, 15));
              //                               },
              //                             ),
              //                           ],
              //                         ),
              //                       ],
              //                     ),
              //                   )
              //                 ],
              //               ),
              //             ),
              //             onTap: () {
              //               sendToWorkoutList(
              //                   context, _workoutList, Constants.yogaId);
              //             },
              //           );
              //         }),
              //       );
              //     } else {
              //       return Container();
              //     }
              //   },
              // ),
            ),
          ],
        )),
      ),
      onWillPop: () async {
        onBackClicked();
        return false;
      },
    );
  }

  void sendToWorkoutList(
      BuildContext context, Category modelWorkoutList, Color color) {
   
    
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return WidgetWorkoutExerciseList(color);
      },
    ));
  }

  void onBackClicked() {
    Navigator.of(context).pop();
  }
}
