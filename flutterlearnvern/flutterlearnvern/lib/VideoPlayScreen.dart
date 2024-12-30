import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:video_player/video_player.dart';

import 'generated/l10n.dart';

class VideoPlayScreen extends StatefulWidget {
  VideoPlayScreen();

  @override
  _VideoPlayScreen createState() {
    return _VideoPlayScreen();
  }
}

class _VideoPlayScreen extends State<VideoPlayScreen> {
  VideoPlayerController? videoController;

  videoInit() async {
    videoController = VideoPlayerController.asset(
            ConstantData.assetPath + "java_cource.mp4")

      ..initialize();

    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  disposeVideo() {
    if (videoController != null) {
      videoController!.dispose();
    }
  }

  @override
  void initState() {
    super.initState();
    ConstantData.setThemePosition();
    videoInit();
  }

  @override
  Widget build(BuildContext context) {
    double videoHeight = ConstantWidget.getScreenPercentSize(context, 45);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            backgroundColor: cellColor,
            title: ConstantWidget.getTextWidget(
                S.of(context).myVideo,
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
          ),
          body: SafeArea(
            child: Container(
              child: Center(
                child: Container(
                  height: videoHeight,
                  width: double.infinity,
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: VideoPlayer(videoController!),

                  ),
                ),
              ),
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  @override
  void dispose() {
    disposeVideo();
    super.dispose();
  }
}
