import 'package:flutter/material.dart';
import 'package:grocery/base/color_data.dart';
import 'package:grocery/base/constant.dart';
import 'package:grocery/base/resizer/fetch_pixels.dart';
import 'package:grocery/base/widget_utils.dart';


class ScreenSelectCountry extends StatefulWidget {
  const ScreenSelectCountry({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ScreenSelectCountry();
  }
}

class _ScreenSelectCountry extends State<ScreenSelectCountry> {
  finish() {
    Constant.backToPrev(context);
  }

  TextEditingController edtController = TextEditingController();

  final Key _key = const Key("rfer");
  String selectedName = "";
  List<Map<String, String>> selectedCountry = [];
  List<Map<String, String>> filterList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return getDetailWidget(context, () {
      finish();
    }, buildList(context));
  }

  ListView buildList(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(
            horizontal: FetchPixels.getDefaultHorSpace(context)),
        shrinkWrap: true,
        primary: true,
        children: [
          getTopViewHeader(context,"Select a Country","",visibleSub: false),
          getSearchWidget(
            context,
            edtController,
            () {},
            (value) {
              filterList = [];
              if (value.isNotEmpty) {

                for (var element in selectedCountry) {
                  String valueGet = element["Name"] ?? "";
                  if (valueGet.contains(value) ||
                      valueGet.toUpperCase().contains(value) ||
                      valueGet.toLowerCase().contains(value)) {
                    filterList.add(element);
                  }
                }
                setState(() {});
              } else {
                setState(() {
                  filterList = selectedCountry;
                });
              }
            },
          ),
          getVerSpace(FetchPixels.getPixelHeight(25)),

        ],
      );
  }
}
