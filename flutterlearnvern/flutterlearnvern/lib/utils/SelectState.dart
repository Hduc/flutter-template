library country_state_city_picker_nona;

import 'dart:convert';

import 'package:country_state_city_picker/model/select_status_model.dart'
    as StatusModel;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'ConstantData.dart';
import 'ConstantWidget.dart';

class SelectState extends StatefulWidget {
  final ValueChanged<String> onCountryChanged;
  final ValueChanged<String> onStateChanged;
  final ValueChanged<String> onCityChanged;
  final TextStyle? style;
  final Color? dropdownColor;

  const SelectState(
      {Key? key,
      required this.onCountryChanged,
      required this.onStateChanged,
      required this.onCityChanged,
      this.style,
      this.dropdownColor})
      : super(key: key);

  @override
  _SelectStateState createState() => _SelectStateState();
}

class _SelectStateState extends State<SelectState> {
  List<String> _cities = ["Choose City"];
  List<String> _country = ["Choose Country"];
  String _selectedCity = "Choose City";
  String _selectedCountry = "Choose Country";
  String _selectedState = "Choose State";
  List<String> _states = ["Choose State"];
  var responses;

  @override
  void initState() {
    getCounty();
    super.initState();
  }

  Future getResponse() async {
    var res = await rootBundle.loadString(
        'packages/country_state_city_picker/lib/assets/country.json');
    return jsonDecode(res);
  }

  Future getCounty() async {
    var countryres = await getResponse() as List;
    countryres.forEach((data) {
      var model = StatusModel.StatusModel();
      model.name = data['name'];
      model.emoji = data['emoji'];
      if (!mounted) return;
      setState(() {
        _country.add(model.emoji! + "    " + model.name!);
      });
    });

    return _country;
  }

  Future getState() async {
    var response = await getResponse();
    var takestate = response
        .map((map) => StatusModel.StatusModel.fromJson(map))
        .where((item) => item.emoji + "    " + item.name == _selectedCountry)
        .map((item) => item.state)
        .toList();
    var states = takestate as List;
    states.forEach((f) {
      if (!mounted) return;
      setState(() {
        var name = f.map((item) => item.name).toList();
        for (var statename in name) {
          print(statename.toString());

          _states.add(statename.toString());
        }
      });
    });

    return _states;
  }

  Future getCity() async {
    var response = await getResponse();
    var takestate = response
        .map((map) => StatusModel.StatusModel.fromJson(map))
        .where((item) => item.emoji + "    " + item.name == _selectedCountry)
        .map((item) => item.state)
        .toList();
    var states = takestate as List;
    states.forEach((f) {
      var name = f.where((item) => item.name == _selectedState);
      var cityname = name.map((item) => item.city).toList();
      cityname.forEach((ci) {
        if (!mounted) return;
        setState(() {
          var citiesname = ci.map((item) => item.name).toList();
          for (var citynames in citiesname) {
            print(citynames.toString());

            _cities.add(citynames.toString());
          }
        });
      });
    });
    return _cities;
  }

  void _onSelectedCountry(String value) {
    if (!mounted) return;
    setState(() {
      _selectedState = "Choose State";
      _states = ["Choose State"];
      _selectedCountry = value;
      this.widget.onCountryChanged(value);
      getState();
    });
  }

  void _onSelectedState(String value) {
    if (!mounted) return;
    setState(() {
      _selectedCity = "Choose City";
      _cities = ["Choose City"];
      _selectedState = value;
      this.widget.onStateChanged(value);
      getCity();
    });
  }

  void _onSelectedCity(String value) {
    if (!mounted) return;
    setState(() {
      _selectedCity = value;
      this.widget.onCityChanged(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ConstantWidget.getTextWidget("Country",  textColor, TextAlign.start,
            FontWeight.bold, ConstantWidget.getScreenPercentSize(context, 2)),
        textFieldProfileWidget1(
            context,
            DropdownButton<String>(
              dropdownColor: widget.dropdownColor,
              isExpanded: true,
              underline: SizedBox(),
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: textColor,
              ),

              items: _country.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Row(
                    children: [
                      Text(
                        dropDownStringItem,
                        style: widget.style,



                      )
                    ],
                  ),
                );
              }).toList(),
              onChanged: (value) => _onSelectedCountry(value!),
              value: _selectedCountry,
            )),


        ConstantWidget.getTextWidget("State",  textColor, TextAlign.start,
            FontWeight.bold, ConstantWidget.getScreenPercentSize(context, 2)),

        textFieldProfileWidget1(context, DropdownButton<String>(
          dropdownColor: widget.dropdownColor,
          isExpanded: true,
          underline: SizedBox(),
          icon: Icon(
            Icons.keyboard_arrow_down,
            color:  textColor,
          ),
          items: _states.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(dropDownStringItem, style: widget.style),
            );
          }).toList(),
          onChanged: (value) => _onSelectedState(value!),
          value: _selectedState,
        )),

        ConstantWidget.getTextWidget("City", textColor, TextAlign.start,
            FontWeight.bold, ConstantWidget.getScreenPercentSize(context, 2)),


        textFieldProfileWidget1(context, DropdownButton<String>(
          dropdownColor: widget.dropdownColor,
          isExpanded: true,
          underline: SizedBox(),
          icon: Icon(
            Icons.keyboard_arrow_down,
            color:  textColor,
          ),
          items: _cities.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(dropDownStringItem, style: widget.style),
            );
          }).toList(),
          onChanged: (value) => _onSelectedCity(value!),
          value: _selectedCity,
        )),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }

  Widget textFieldProfileWidget1(BuildContext context, Widget widget) {
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
      child: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: bgColor,
        ),
        child: widget,
      ),
    );
  }
}
