// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/ConstantData.dart';
import '../utils/ConstantWidget.dart';
import '../utils/SizeConfig.dart';
import 'ReviewSlider.dart';

class AddNewAddressPage extends StatefulWidget {
  @override
  _AddNewAddressPage createState() {
    return _AddNewAddressPage();
  }
}

class _AddNewAddressPage extends State<AddNewAddressPage> {
  int _selectedRadio = 0;
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneNumberController = new TextEditingController();
  TextEditingController cityController = new TextEditingController();
  TextEditingController zipController = new TextEditingController();
  TextEditingController addController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = "harry";
    phoneNumberController.text = "326589";
    cityController.text = "New York";
    zipController.text = "32659";
    addController.text = "87  Great North Road,ALTON";

    setState(() {});
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop();
    return new Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double leftMargin = MediaQuery.of(context).size.width * 0.05;
    double editTextHeight = MediaQuery.of(context).size.height * 0.06;

    return WillPopScope(
        child: Scaffold(
          backgroundColor: ConstantData.bgColor,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: ConstantData.bgColor,

            title: ConstantWidget.getAppBarText(S.of(context).checkOut),
            // title: ConstantWidget.getCustomTextWithoutAlign(S.of(context).checkOut, ConstantData.textColor, FontWeight.bold, ConstantData.font18Px),

            // title: Text(S.of(context).checkOut,
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         fontSize: ConstantData.font18Px,
            //         fontFamily: ConstantData.fontFamily,
            //         color: ConstantData.textColor)),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: ConstantWidget.getAppBarIcon(),
                  onPressed: _requestPop,
                );
              },
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(
                left: leftMargin, right: leftMargin, top: leftMargin),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ReviewSlider(
                          optionStyle: TextStyle(
                            fontFamily: ConstantData.fontFamily,
                            fontSize: 8,
                            color: ConstantData.textColor,
                            fontWeight: FontWeight.bold,
                          ),
                          onChange: (index) {},
                          initialValue: 0,
                          width: double.infinity,
                          options: [
                            S.of(context).personalInfo,
                            S.of(context).payment,
                            S.of(context).confirmation
                          ]),

                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          // child: Text(
                          //   S.of(context).deliverTo,
                          //   textAlign: TextAlign.start,
                          //   style: TextStyle(
                          //       fontFamily: ConstantData.fontFamily,
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 16,
                          //       color: ConstantData.textColor),
                          // )

                          child: ConstantWidget.getCustomText(
                              S.of(context).deliverTo,
                              ConstantData.textColor,
                              1,
                              TextAlign.start,
                              FontWeight.w500,
                              ConstantData.font12Px),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     top: 10,
                      //   ),
                      //   child: Align(
                      //       alignment: Alignment.topLeft,
                      //       child: Text(
                      //         S.of(context).fullName,
                      //         textAlign: TextAlign.start,
                      //         style: TextStyle(
                      //             fontFamily: ConstantData.fontFamily,
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: ConstantData.font12Px,
                      //             color: ConstantData.textColor),
                      //       )),
                      // ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          controller: nameController,
                          style: TextStyle(
                              fontFamily: ConstantData.fontFamily,
                              color: ConstantData.primaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),

                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Full Name',
                            // hintText: 'Full Name',
                          ),

                          // decoration: InputDecoration(
                          //   contentPadding: EdgeInsets.only(top: 3, left: 8),
                          //   enabledBorder: UnderlineInputBorder(
                          //     borderSide:
                          //         BorderSide(color: ConstantData.textColor),
                          //   ),
                          //   focusedBorder: UnderlineInputBorder(
                          //     borderSide: BorderSide(
                          //         color: ConstantData.disableIconColor),
                          //   ),
                          // ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     top: 10,
                      //   ),
                      //   child: Align(
                      //       alignment: Alignment.topLeft,
                      //       child: Text(
                      //         S.of(context).phoneNumber,
                      //         textAlign: TextAlign.start,
                      //         style: TextStyle(
                      //             fontFamily: ConstantData.fontFamily,
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: ConstantData.font12Px,
                      //             color: ConstantData.textColor),
                      //       )),
                      // ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10, top: 5),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          controller: phoneNumberController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontFamily: ConstantData.fontFamily,
                              color: ConstantData.primaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),

                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Phone Number',
                            // hintText: 'Full Name',
                          ),
                          // decoration: InputDecoration(
                          //   contentPadding: EdgeInsets.only(top: 3, left: 8),
                          //   enabledBorder: UnderlineInputBorder(
                          //     borderSide:
                          //         BorderSide(color: ConstantData.textColor),
                          //   ),
                          //   focusedBorder: UnderlineInputBorder(
                          //     borderSide: BorderSide(
                          //         color: ConstantData.disableIconColor),
                          //   ),
                          // ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //     top: 10,
                                //   ),
                                //   child: Align(
                                //       alignment: Alignment.topLeft,
                                //       child: Text(
                                //         S.of(context).cityDistrict,
                                //         textAlign: TextAlign.start,
                                //         style: TextStyle(
                                //             fontFamily: ConstantData.fontFamily,
                                //             fontWeight: FontWeight.bold,
                                //             fontSize: ConstantData.font12Px,
                                //             color: ConstantData.textColor),
                                //       )),
                                // ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, top: 10),
                                  height: editTextHeight,
                                  child: TextField(
                                    controller: cityController,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontFamily: ConstantData.fontFamily,
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),

                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: S.of(context).cityDistrict,
                                      // hintText: 'Full Name',
                                    ),

                                    // decoration: InputDecoration(
                                    //   contentPadding:
                                    //       EdgeInsets.only(top: 3, left: 8),
                                    //   enabledBorder: UnderlineInputBorder(
                                    //     borderSide: BorderSide(
                                    //         color: ConstantData.textColor),
                                    //   ),
                                    //   focusedBorder: UnderlineInputBorder(
                                    //     borderSide: BorderSide(
                                    //         color:
                                    //             ConstantData.disableIconColor),
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                // Padding(
                                //   padding: EdgeInsets.only(top: 10, left: 8),
                                //   child: Align(
                                //       alignment: Alignment.topLeft,
                                //       child: Text(
                                //         S.of(context).zip,
                                //         textAlign: TextAlign.start,
                                //         style: TextStyle(
                                //             fontFamily: ConstantData.fontFamily,
                                //             fontWeight: FontWeight.bold,
                                //             fontSize: ConstantData.font12Px,
                                //             color: ConstantData.textColor),
                                //       )),
                                // ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 10, left: 8, top: 10),
                                  height: editTextHeight,
                                  child: TextField(
                                    maxLines: 1,
                                    controller: zipController,

                                    style: TextStyle(
                                        fontFamily: ConstantData.fontFamily,
                                        color: ConstantData.primaryTextColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),

                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: S.of(context).zip,
                                      // hintText: 'Full Name',
                                    ),

                                    // decoration: InputDecoration(
                                    //   contentPadding:
                                    //       EdgeInsets.only(top: 3, left: 8),
                                    //   enabledBorder: UnderlineInputBorder(
                                    //     borderSide: BorderSide(
                                    //         color: ConstantData.textColor),
                                    //   ),
                                    //   focusedBorder: UnderlineInputBorder(
                                    //     borderSide: BorderSide(
                                    //         color:
                                    //             ConstantData.disableIconColor),
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     top: 10,
                      //   ),
                      //   child: Align(
                      //       alignment: Alignment.topLeft,
                      //       child: Text(
                      //         S.of(context).address,
                      //         textAlign: TextAlign.start,
                      //         style: TextStyle(
                      //             fontFamily: ConstantData.fontFamily,
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: ConstantData.font12Px,
                      //             color: ConstantData.textColor),
                      //       )),
                      // ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        height: editTextHeight,
                        child: TextField(
                          maxLines: 1,
                          controller: addController,
                          style: TextStyle(
                              fontFamily: ConstantData.fontFamily,
                              color: ConstantData.primaryTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                          // decoration: InputDecoration(
                          //   contentPadding: EdgeInsets.only(top: 3, left: 8),
                          //   enabledBorder: UnderlineInputBorder(
                          //     borderSide:
                          //         BorderSide(color: ConstantData.textColor),
                          //   ),
                          //   focusedBorder: UnderlineInputBorder(
                          //     borderSide: BorderSide(
                          //         color: ConstantData.disableIconColor),
                          //   ),
                          // ),

                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: S.of(context).address,
                            // hintText: 'Full Name',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: _radioView(S.of(context).houseApartment,
                            (_selectedRadio == 0), 0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: _radioView(S.of(context).agencyCompany,
                            (_selectedRadio == 1), 1),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: leftMargin),
                      height: 50,
                      decoration: BoxDecoration(
                          color: ConstantData.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: InkWell(
                        child: Center(
                          child: Text(
                            S.of(context).save,
                            style: TextStyle(
                                fontFamily: ConstantData.fontFamily,
                                fontWeight: FontWeight.w900,
                                fontSize: ConstantData.font15Px,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ],
            ),
          ),
        ),
        onWillPop: _requestPop);
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
            color: isSelected
                ? ConstantData.textColor
                : ConstantData.disableIconColor,
            size: 18,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              s,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: ConstantData.fontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: ConstantData.font12Px,
                  color: ConstantData.textColor),
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
}
