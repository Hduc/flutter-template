import 'package:flutter/material.dart';

class DynamicRangeSlider extends StatelessWidget {
  final Key? key;
  final RangeValues currentRangeValues;
  final double min, max;
  final onChanged, onChangeEnd;

  DynamicRangeSlider({
    this.key,
    required this.currentRangeValues,
    required this.min,
    required this.max,
    required this.onChanged,
    this.onChangeEnd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
     activeColor: Color(0xFFAA6BE9),
      inactiveColor: Color(0xFFE7E7E7),
      values: currentRangeValues,
      min: min,
      max: max,
      divisions: 100,
      labels: RangeLabels(
        currentRangeValues.start.round().toString(),
        currentRangeValues.end.round().toString(),
      ),
      onChanged: onChanged, // callback when the range values change
      onChangeEnd: onChangeEnd ??
          null, // callback when the user is done selecting new values
    );
  }
}