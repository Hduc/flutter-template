
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

/// This class is used in the [history_item_widget] screen.

class HistoryItemModel {
  HistoryItemModel({
    this.radioGroup,
    this.amount,
    this.textColor,
    this.fillColor,
    this.id,
    this.text,
  }) {
    radioGroup = radioGroup ?? Rx("");
    amount = amount ?? Rx("32,800.00");
    id = id ?? Rx("");
    text = text ?? Rx("");
    fillColor = fillColor ?? Rx(Colors.red);
    textColor = textColor ?? Rx(Colors.white);
  }

  Rx<String>? radioGroup;
  Rx<String>? text;

  Rx<String>? amount;
  Rx<Color>? fillColor;
  Rx<Color>? textColor;

  Rx<String>? id;
}
