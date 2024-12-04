
import 'package:flutter/widgets.dart';
import 'package:hair_salon_app/core/app_export.dart';

import '../countries.dart';
import '../country.dart';

class CountryPickerUtils {
  static Country getCountryByIso3Code(String iso3Code) {
    try {
      return countryList.firstWhere(
        (country) => country.iso3Code.toLowerCase() == iso3Code.toLowerCase(),
      );
    } catch (error) {
      throw Exception("The initialValue provided is not a supported iso 3 code!");
    }
  }

  static Country getCountryByIsoCode(String isoCode) {
    try {
      return countryList.firstWhere(
        (country) => country.isoCode.toLowerCase() == isoCode.toLowerCase(),
      );
    } catch (error) {
      throw Exception("The initialValue provided is not a supported iso code!");
    }
  }

  static Country getCountryByName(String name) {
    try {
      return countryList.firstWhere(
        (country) => country.name.toLowerCase() == name.toLowerCase(),
      );
    } catch (error) {
      throw Exception("The initialValue provided is not a supported name!");
    }
  }

  static String getFlagImageAssetPath(String isoCode) {
    return "assets/images/${isoCode.toLowerCase()}.png";
  }

  static Widget getDefaultFlagImage(Country country) {
    return Image.asset(
      CountryPickerUtils.getFlagImageAssetPath(country.isoCode),
      height: getVerticalSize(16),
      width: getVerticalSize(24),
      fit: BoxFit.fill,
    );
  }

  static Country getCountryByPhoneCode(String phoneCode) {
    try {
      return countryList.firstWhere(
        (country) => country.isoCode.toLowerCase() == phoneCode.toLowerCase(),
      );
    } catch (error) {
      throw Exception(
          "The initialValue provided is not a supported phone code!");
    }
  }
}
