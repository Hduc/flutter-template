// ignore_for_file: deprecated_member_use

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:readmore/readmore.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/data_file.dart';
import '../../util/data_manager.dart';
import '../../util/fetch_pixels.dart';
import '../../util/web_video_control.dart';
import '../../util/widget_utils.dart';
import '../model/model_save.dart';

class VideoDetailScreen extends StatefulWidget {
  const VideoDetailScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _VideoDetailScreen();
  }
}

class _VideoDetailScreen extends State<VideoDetailScreen> {
  FlickManager? flickManager;

  @override
  void dispose() {
    flickManager!.dispose();
    super.dispose();
  }

  onBackClick(BuildContext context) {
    Constant.backToPrev(context);
  }

  DataManager? dataManager;

  @override
  void initState() {
    super.initState();
    String url =
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.network(
          // "https://github.com/GeekyAnts/flick-video-player-demo-videos/blob/master/example/rio_from_above_compressed.mp4?raw=true",
          url,
        ),
        autoPlay: true);

    dataManager = DataManager(flickManager: flickManager!, urls: [url]);
  }

  List<ModelSave> saveList = DataFile.getAllSaveList();

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);
    return WillPopScope(
      onWillPop: () async {
        onBackClick(context);
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildVideoPlayer(),
              Expanded(
                  child: ListView(
                shrinkWrap: true,
                children: [
                  getVerSpace(20.h),
                  buildVideoInfoWidget(context),
                  20.h.verticalSpace,
                  buildDownloadAndShareButton(context),
                  20.h.verticalSpace,
                  getDivider(
                      indent: 0.w,
                      endIndent: 0.w,
                      setColor: getDividerColor(context)),
                  20.h.verticalSpace,
                  getCustomFont('More Like this', 15, getFontColor(context), 1,
                      fontWeight: FontWeight.w500),
                  buildMoreList()
                ],
              ).paddingSymmetric(horizontal: horSpace))
            ],
          ),
        ),
      ),
    );
  }

  ListView buildMoreList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        ModelSave list = saveList[index];
        return Container(
          height: 134.h,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10.h),
          decoration: getButtonDecoration(getCardColor(context),
              withCorners: true, corner: 12.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getCircularImage(context, 118.h, double.infinity, 12, list.img,
                      boxFit: BoxFit.cover)
                  .paddingAll(8.h),
              4.h.horizontalSpace,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getCustomFont(list.title, 17, getFontColor(context), 1,
                      fontWeight: FontWeight.w600),
                  12.h.horizontalSpace,
                  getCustomFont(
                      '2022 - Drama - season', 14, getFontColor(context), 1,
                      fontWeight: FontWeight.w400),
                  12.h.verticalSpace,
                  SizedBox(
                    width: 121.h,
                    child: getButtonFigma(
                      context,
                      getAccentColor(context),
                      true,
                      'Watch Now',
                      getFontColor(context),
                      () {},
                      EdgeInsets.zero,
                      withFilter: true,
                    ),
                  )
                ],
              )),
            ],
          ),
        );
      },
    );
  }

  Row buildDownloadAndShareButton(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: getButtonFigma(context, Colors.transparent, true, 'Download',
              getFontColor(context), () {}, EdgeInsets.zero,
              isBorder: true,
              borderColor: getAccentColor(context),
              isIcon: true,
              icons: 'import.svg',
              withFilter: true),
        ),
        20.w.horizontalSpace,
        Expanded(
          flex: 1,
          child: getButtonFigma(
              context, Colors.transparent, true, 'Share', getFontColor(context),
              () {
            Share.share("http://vtv.app.link/asbgysvahg");
          }, EdgeInsets.zero,
              isBorder: true,
              borderColor: getAccentColor(context),
              isIcon: true,
              icons: 'Share.svg',
              withFilter: true),
        )
      ],
    );
  }

  Column buildVideoInfoWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getCustomFont('Boss Level', 20, getFontColor(context), 1,
            fontWeight: FontWeight.w700),
        3.h.verticalSpace,
        getCustomFont(
            '2021 ‧ Action/Sci-fi ‧ 1h 40m', 16, getFontHint(context), 12,
            fontWeight: FontWeight.w400),
        6.h.verticalSpace,
        Row(
          children: [
            getCustomFont("4.5", 12, getFontColor(context), 1,
                fontWeight: FontWeight.w400),
            getHorSpace(6.h),
            GFRating(
              onChanged: (rating) {},
              value: 4.5,
              itemCount: 5,
              size: 16.h,
              spacing: 6.h,
              allowHalfRating: true,
              filledIcon: getSvgImageWithSize(context, "star.svg", 16.h, 16.h),
              halfFilledIcon:
                  getSvgImageWithSize(context, "star_half.svg", 16.h, 16.h),
            ),
          ],
        ),
        21.h.verticalSpace,
        ReadMoreText(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          style: buildTextStyle(
            context,
            getFontColor(context),
            FontWeight.w400,
            14,
            txtHeight: 1.5,
          ),
          trimLines: 3,
          trimMode: TrimMode.Line,
          textAlign: TextAlign.start,
          trimCollapsedText: 'Show more',
          lessStyle: buildTextStyle(
              context, getAccentColor(context), FontWeight.w400, 14,
              txtHeight: 1.5),
          moreStyle: buildTextStyle(
              context, getAccentColor(context), FontWeight.w400, 14,
              txtHeight: 1.5),
          trimExpandedText: ' Less',
        )
      ],
    );
  }

  Widget buildVideoPlayer() {
    return Stack(
      children: [
        SizedBox(
          height: 230.w,
          width: double.infinity,
          child: flickManager != null
              ? FlickVideoPlayer(
                  flickManager: flickManager!,
                  flickVideoWithControls: FlickVideoWithControls(
                    closedCaptionTextStyle: TextStyle(fontSize: 8),
                    controls: kIsWeb
                        ? WebVideoControl(
                            dataManager: dataManager!,
                            iconSize: 30,
                            fontSize: 14,
                            progressBarSettings: FlickProgressBarSettings(
                              height: 5,
                              handleRadius: 5.5,
                            ),
                          )
                        : FlickPortraitControls(),
                    videoFit: BoxFit.fill,
                  ),
                  flickVideoWithControlsFullscreen:
                      const FlickVideoWithControls(
                    controls: FlickLandscapeControls(),
                  ),
                )
              : 0.verticalSpace,
        ),
        Column(
          children: [
            20.h.verticalSpace,
            GestureDetector(
                onTap: () {
                  Constant.backToPrev(context);
                },
                child: getSvgImage(context, "arrow_back.svg", 24.h)
                    .paddingSymmetric(horizontal: 20.h))
          ],
        )
      ],
    );
  }
}
