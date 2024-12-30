import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/core/utils/validation_functions.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

import '../core/country_picker/country.dart';
import '../core/country_picker/country_picker_dialog.dart';
import '../core/country_picker/utils/utils.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    required this.country,
    required this.onTap,
    required this.controller,
  });

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            _openCountryPicker(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: ColorConstant.gray50,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16,
                ),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    left: 15,
                    top: 23,
                    bottom: 23,
                  ),
                  child: CountryPickerUtils.getDefaultFlagImage(
                    country,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    right: 22,
                  ),
                  child: Text(
                    "+${country.phoneCode}",
                    style: AppStyle.txtSFProTextRegular17,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: CustomTextFormField(
            controller: controller,
            hintText: "Phone number",
            prefixConstraints: BoxConstraints(
                maxHeight: getVerticalSize(62), minHeight: getVerticalSize(62)),
            prefix: SizedBox(
                height: getVerticalSize(62), width: getVerticalSize(16)),
            margin: getMargin(
              left: 8,
            ),
            fontStyle: TextFormFieldFontStyle.SFProTextRegular17,
            textInputType: TextInputType.phone,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            validator: (value) {
              if (!isValidPhone(value)) {
                return "Please enter valid phone number";
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );

  void _openCountryPicker(BuildContext context) => showModalBottomSheet(
        backgroundColor: ColorConstant.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(getHorizontalSize(32)),
              topRight: Radius.circular(getHorizontalSize(32))),
        ),
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
