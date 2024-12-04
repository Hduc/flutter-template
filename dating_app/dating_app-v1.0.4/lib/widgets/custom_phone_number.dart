import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  final Color? color;
  final Color? tColor;
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller, this.color, this.tColor,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color??Colors.white,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12,
          ),
        ),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer,
          width: getHorizontalSize(
            1,
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: getPadding(
                left: 16,
                top: 17,
                bottom: 16,
              ),
              child: Text(
                "+${country.phoneCode}",
                style: CustomTextStyles.bodyLargeSFProText,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
               child: Icon(Icons.arrow_drop_down,color: Colors.black,)),
          Expanded(
            child: CustomTextFormField(
              controller: controller,
              autofocus: false,
              margin: getMargin(
                left: 5,
                right: 30,
              ),
              fillColor: tColor??Colors.transparent,
              borderDecoration: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    12,
                  ),
                ),
                borderSide: BorderSide.none
              ),

              textStyle: CustomTextStyles.bodyLargeSFProText,
              hintText: "Enter Phone Number".tr,
              hintStyle: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: getFontSize(16),
                fontWeight: FontWeight.w400,
              ),
              textInputAction: TextInputAction.next,

              prefix: Container(
                margin: getMargin(
                  top: 3,
                  right: 5,
                  bottom: 4,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgIcArrowDown,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: getVerticalSize(
                  20,
                ),
              ),
            ),
          ),
        ],
      ),
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
  void _openCountryPicker(BuildContext context) => showDialog(
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
