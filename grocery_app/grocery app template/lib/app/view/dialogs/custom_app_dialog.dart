// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:grocery/base/constant.dart';

import '../../../base/color_data.dart';
import '../../../base/resizer/fetch_pixels.dart';
import '../../../base/widget_utils.dart';
import '../../routes/app_routes.dart';

// ignore: must_be_immutable
class CustomAppDialog extends StatefulWidget {
  BuildContext context;
  Function onChanged;
  String image;
  String title;
  String desc;
  String btnTxt;
  bool withClose;
  bool withBorderBtn;

  @override
  _CustomAppDialog createState() {
    return _CustomAppDialog();
  }

  CustomAppDialog(this.context, this.onChanged, this.image, this.title,
      this.desc, this.btnTxt,
      {this.withClose = false, this.withBorderBtn = false, super.key});
}

class _CustomAppDialog extends State<CustomAppDialog> {
  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return StatefulBuilder(
      builder: (context, setState) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(FetchPixels.getPixelHeight(12)),
          ),
          elevation: 0.0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          child: dialogContent(context, setState),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  dialogContent(BuildContext context, var setState) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: FetchPixels.getDefaultHorSpace(context)),
      padding: EdgeInsets.symmetric(
          horizontal: FetchPixels.getDefaultHorSpace(context)),
      decoration: BoxDecoration(
        color: getCurrentTheme(context).dialogBackgroundColor,
        borderRadius: BorderRadius.circular(FetchPixels.getDialogCorner()),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          getVerSpace(FetchPixels.getPixelHeight(80)),
          buildClose(context),
          getSvgImageWithSize(context, widget.image,
              FetchPixels.getPixelHeight(250), FetchPixels.getPixelHeight(250)),
          getVerSpace(FetchPixels.getPixelHeight(45)),
          buildTitle(context),
          Visibility(
              visible: widget.title.isNotEmpty,
              child: getVerSpace(FetchPixels.getPixelHeight(20))),
          buildDesc(context),
          getVerSpace(FetchPixels.getPixelHeight(50)),
          Row(
            children: [
              Visibility(
                  visible: widget.withBorderBtn,
                  child: Expanded(
                    flex: 1,
                    child: buildBorderButton(context),
                  )),
              Visibility(
                  visible: widget.withBorderBtn,
                  child: getHorSpace(FetchPixels.getPixelWidth(20))),
              Expanded(
                flex: 1,
                child: buildButton(context),
              ),
            ],
          ),
          getVerSpace(FetchPixels.getPixelHeight(50))
        ],
      ),
    );
  }

  Visibility buildDesc(BuildContext context) {
    return Visibility(
        visible: widget.desc.isNotEmpty,
        child: getMultilineCustomFont(widget.desc, 45, getFontColor(context),
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w400,
            txtHeight: 1.46));
  }

  Visibility buildTitle(BuildContext context) {
    return Visibility(
        visible: widget.title.isNotEmpty,
        child: getCustomFont(widget.title, 52, getFontColor(context), 1,
            textAlign: TextAlign.center, fontWeight: FontWeight.bold));
  }

  Visibility buildClose(BuildContext context) {
    return Visibility(
      visible: widget.withClose,
      child: Align(
        alignment: Alignment.topRight,
        child: getCloseButton(context, () {
          Constant.backToPrev(context);
        }),
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    return getButton(
        context, getAccentColor(context), true, widget.btnTxt, Colors.white,
            () {
          Constant.backToPrev(context);
          widget.onChanged();
        }, EdgeInsets.only(bottom: FetchPixels.getPixelHeight(40)));
  }
  Widget buildBorderButton(BuildContext context) {
    return getButton(
        context, Colors.transparent, true,"Ok", getAccentColor(context),
            () {

              Constant.backToPrev(context);
              Constant.sendToNext(context,Routes.homeScreenRoute);

            }, EdgeInsets.only(bottom: FetchPixels.getPixelHeight(40)),withGradient: false,isBorder: true,borderColor: getAccentColor(context));
  }
}
