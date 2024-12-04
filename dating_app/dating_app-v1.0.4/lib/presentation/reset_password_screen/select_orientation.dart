import 'package:flutter/material.dart';

class SelectOrientation extends StatelessWidget {
  final String? text;
  final bool  isSelect;
  const SelectOrientation({super.key, this.text, required this.isSelect});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(text??'Select Up to 3',style: TextStyle(fontSize:16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),),
                ),
               isSelect? Padding(
                  padding:  EdgeInsets.only(right: 14),
                  child: Icon(Icons.check_rounded,color: Color(0xFFAA6BE9),size: 18,),
                ):SizedBox(),
              ],
            ),
            Divider(
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
