import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterlearnvern/SizeConfig.dart';
import 'package:flutterlearnvern/utils/ConstantData.dart';
import 'package:flutterlearnvern/utils/ConstantWidget.dart';
import 'package:flutterlearnvern/utils/SelectState.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'ResetPasswordPassword.dart';
import 'generated/l10n.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePage createState() {
    return _EditProfilePage();
  }
}

class _EditProfilePage extends State<EditProfilePage> {
  TextEditingController firstNameController = new TextEditingController();
  TextEditingController mailController = new TextEditingController();
  TextEditingController genderController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController educationController = new TextEditingController();
  TextEditingController collageController = new TextEditingController();

  String countryValue = "";
  String cityValue = "";
  String stateValue = "";
  @override
  void initState() {
    super.initState();

    ConstantData.setThemePosition();

    firstNameController.text = "harry";
    mailController.text = "fd@gamil.com";
    genderController.text = "Male";
    phoneController.text = "+91692668544";

    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  int _selectedRadio = 0;
  List<String> radioList = [
    "Student",
    "Fresh Graduate",
    "Working Professional"
  ];

  bool isNext = false;

  XFile? _image;
  final picker = ImagePicker();

  _imgFromGallery() async {
    final ImagePicker _picker = ImagePicker();

    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    print(image!.path);
    setState(() {
      _image = image;
    });
  }

  getProfileImage() {
    if (_image != null && _image!.path.isNotEmpty) {
      return Image.file(
        File(_image!.path),
        fit: BoxFit.cover,
      );
    } else {
      return Image.asset(
        ConstantData.assetImagesPath + "hugh.png",
        fit: BoxFit.cover,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    double profileHeight = ConstantWidget.getScreenPercentSize(context, 15);
    double defaultMargin = ConstantWidget.getScreenPercentSize(context, 2);
    double editSize = ConstantWidget.getPercentSize(profileHeight, 24);
    double topMargin = ConstantWidget.getScreenPercentSize(context, 1);

    var firstHeight = ConstantWidget.getScreenPercentSize(context, 6.5);

    double height = ConstantWidget.getScreenPercentSize(context, 7);

    double radius = ConstantWidget.getPercentSize(height, 20);

    return WillPopScope(
        child: Scaffold(
          backgroundColor: bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: cellColor,
            title: ConstantWidget.getAppBarText(S.of(context).personalDetails),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: ConstantWidget.getAppBarIcon(),
                  onPressed: _requestPop,
                );
              },
            ),
          ),
          bottomNavigationBar: Row(
            children: [
              Expanded(
                child: ConstantWidget.getBottomText(
                    context, (!isNext) ? S.of(context).next : "Previous", () {
                  setState(() {
                    if (isNext) {
                      isNext = false;
                    } else {
                      isNext = true;
                    }
                  });
                }),
              ),
              Visibility(
                visible: isNext,
                child: Expanded(
                  child: ConstantWidget.getBottomText(
                      context, S.of(context).save, () {
                    Navigator.of(context).pop(true);
                  }),
                ),
              )
            ],
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        bottom:
                            ConstantWidget.getScreenPercentSize(context, 2)),
                    child: new LinearPercentIndicator(
                      lineHeight:
                          ConstantWidget.getScreenPercentSize(context, 0.8),
                      padding: EdgeInsets.zero,
                      percent: (isNext) ? 1 : 0.5,
                      backgroundColor: Colors.grey.shade400,
                      progressColor: primaryColor,
                    )),
                Expanded(
                  child: !isNext
                      ? ListView(
                          children: [
                            Container(
                                height: profileHeight + (profileHeight / 5),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Stack(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: profileHeight,
                                          width: profileHeight,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: primaryColor,
                                                  width: ConstantWidget
                                                      .getScreenPercentSize(
                                                          context, 0.2))),
                                          child: ClipOval(
                                            child: Material(
                                              color: Colors.white,
                                              child: getProfileImage(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: InkWell(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: ConstantWidget
                                                    .getScreenPercentSize(
                                                        context, 10),
                                                bottom: ConstantWidget
                                                    .getScreenPercentSize(
                                                        context, 2.7)),
                                            height: editSize,
                                            width: editSize,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: primaryColor,
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.photo_camera_back,
                                                  color: Colors.white,
                                                  size: ConstantWidget
                                                      .getPercentSize(
                                                          editSize, 48),
                                                ),
                                              ),
                                            ),
                                          ),
                                          onTap: () async {
                                            _imgFromGallery();
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                            Container(
                              margin:
                                  EdgeInsets.symmetric(vertical: defaultMargin),
                              padding: EdgeInsets.all(defaultMargin),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ResetPasswordPassword(),
                                          ));
                                    },
                                    child: Container(
                                      height: firstHeight,
                                      margin: EdgeInsets.symmetric(
                                          vertical: ConstantWidget
                                              .getScreenPercentSize(
                                                  context, 1.2)),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      decoration: BoxDecoration(
                                        color: cellColor,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(radius),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 8.0,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: ConstantWidget.getTextWidget(
                                                "Reset Password",
                                                textColor,
                                                TextAlign.left,
                                                FontWeight.w500,
                                                ConstantWidget.getPercentSize(
                                                    firstHeight, 35)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  textFieldProfileWidget(
                                      context,
                                      S.of(context).firstName,
                                      Icons.account_circle,
                                      true,
                                      firstNameController,
                                      () {}),
                                  textFieldProfileWidget(
                                      context,
                                      S.of(context).lastName,
                                      Icons.account_circle,
                                      true,
                                      mailController,
                                      () {}),
                                  textFieldProfileWidget(
                                      context,
                                      S.of(context).phoneNumber,
                                      Icons.call,
                                      false,
                                      phoneController,
                                      () {}),
                                  SizedBox(
                                    height: (defaultMargin / 2),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: ConstantWidget
                                        .getCustomTextWithoutAlign(
                                            "Are you a",
                                            textColor,
                                            FontWeight.bold,
                                            ConstantData.font18Px),
                                  ),
                                  ListView.builder(
                                    itemCount: radioList.length,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    padding: EdgeInsets.symmetric(
                                        vertical: topMargin),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: topMargin),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedRadio = index;
                                            });
                                          },
                                          child: _radioView(radioList[index],
                                              (_selectedRadio == index), index),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: defaultMargin,
                            )
                          ],
                        )
                      : getSecondWidget(),
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
  }

  getSecondWidget() {
    double defaultMargin = ConstantWidget.getScreenPercentSize(context, 2);

    double height = ConstantWidget.getScreenPercentSize(context, 7);

    double fontSize = ConstantWidget.getPercentSize(height, 26);
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        ConstantWidget.getTextWidget(
            "Education Level",
            textColor,
            TextAlign.start,
            FontWeight.bold,
            ConstantWidget.getScreenPercentSize(context, 2)),
        textFieldProfileWidget1(context, "Please select education Level",
            Icons.keyboard_arrow_down, true, educationController, () {}),
        ConstantWidget.getTextWidget("Collage Name", textColor, TextAlign.start,
            FontWeight.bold, ConstantWidget.getScreenPercentSize(context, 2)),
        textFieldProfileWidget1(context, "Please select collage Name",
            Icons.keyboard_arrow_down, true, collageController, () {}),
        SelectState(
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
            color: textColor,
          ),
          onCountryChanged: (value) {
            setState(() {
              countryValue = value;
            });
          },
          onStateChanged: (value) {
            setState(() {
              stateValue = value;
            });
          },
          onCityChanged: (value) {
            setState(() {
              cityValue = value;
            });
          },
        ),
      ],
    );
  }

  Widget _radioView(String s, bool isSelected, int position) {
    return InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            isSelected
                ? Icons.radio_button_checked
                : Icons.radio_button_unchecked,
            color: isSelected ? Colors.green : Colors.grey,
            size: ConstantWidget.getScreenPercentSize(context, 2),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: ConstantWidget.getScreenPercentSize(context, 1.5)),
            child: Text(
              s,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: ConstantData.fontsFamily,
                  fontWeight: FontWeight.w300,
                  fontSize: ConstantData.font18Px,
                  color: subTextColor),
            ),
          )
        ],
      ),
      onTap: () {
        if (position != _selectedRadio) {
          if (_selectedRadio == 0) {
            _selectedRadio = 1;
          } else {
            _selectedRadio = 0;
          }
        }
        setState(() {});
      },
    );
  }

  static Widget textFieldProfileWidget(
      BuildContext context,
      String s,
      var icon,
      bool isEnabled,
      TextEditingController textEditingController,
      Function function) {
    double height = ConstantWidget.getScreenPercentSize(context, 7);

    double radius = ConstantWidget.getPercentSize(height, 20);
    double fontSize = ConstantWidget.getPercentSize(height, 25);

    return Container(
      height: height,
      margin: EdgeInsets.symmetric(
          vertical: ConstantWidget.getScreenPercentSize(context, 1.2)),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: cellColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              maxLines: 1,
              controller: textEditingController,
              enabled: isEnabled,
              style: TextStyle(
                  fontFamily: ConstantData.fontsFamily,
                  color: isEnabled ? textColor : subTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: fontSize),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: s,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      icon,
                      color: isEnabled ? textColor : subTextColor,
                    ),
                  ),
                  hintStyle: TextStyle(
                      fontFamily: ConstantData.fontsFamily,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: fontSize)),
            ),
          )
        ],
      ),
    );
  }

  static Widget textFieldProfileWidget1(
      BuildContext context,
      String s,
      var icon,
      bool isEnabled,
      TextEditingController textEditingController,
      Function function) {
    double height = ConstantWidget.getScreenPercentSize(context, 7);

    double radius = ConstantWidget.getPercentSize(height, 20);
    double fontSize = ConstantWidget.getPercentSize(height, 26);

    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: fontSize),
      margin: EdgeInsets.only(
          top: ConstantWidget.getScreenPercentSize(context, 1.2),
          bottom: ConstantWidget.getScreenPercentSize(context, 3)),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: cellColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: ConstantWidget.getTextWidget(
                textEditingController.text.isEmpty
                    ? s
                    : textEditingController.text,
                textColor,
                TextAlign.start,
                FontWeight.w400,
                fontSize),
          ),
          Icon(
            icon,
            color: textColor,
          ),
        ],
      ),
    );
  }
}
