import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getVerticalSize(17),
        ),
        Text(
          "Our salon is a sanctuary where skilled stylists and estheticians work their magic to enhance your natural beauty. From trendy haircuts and vibrant hair color to soothing facials and rejuvenating spa treatments, we offer  salon is a sanctuary where skilled stylists and esthetician work their magic to enhance",
          style: AppStyle.txtSFProDisplayRegular17.copyWith(height: 1.5),
        )
      ],
    );
  }
}
