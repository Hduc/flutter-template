// import 'package:flutter/material.dart';
// import 'package:flutter_salary_management_app/presentation/history_transaction_screen_page/history_transaction_screen_page.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// class InsulinChart extends StatefulWidget {
//   final String? date;
//   InsulinChart({super.key, this.date});
//
//   @override
//   State<InsulinChart> createState() => _InsulinChartState();
// }
//
// class _InsulinChartState extends State<InsulinChart> {
//   late List<ChartData> data;
//   late TooltipBehavior _tooltip;
//   final List<ChartData> chartData2 = [
//     ChartData('A', 20),
//     ChartData('B', 30),
//     ChartData('C', 15),
//     ChartData('D', 40),
//     ChartData('E', 35),
//   ];
//   @override
//   void initState() {
//     // TODO: implement initState
//     data = [
//       // ChartData('Mo', 75  ),
//       // ChartData('Tu', 35),
//       // ChartData('We', 45),
//       // ChartData('Th', 32),
//       // ChartData('Fr', 65) ,
//       // ChartData('Sa', 28) ,
//       // ChartData('Su', 58) ,
//     ];
//     _tooltip = TooltipBehavior(enable: true);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: getPadding(top: 24, bottom: 24.29),
//       margin: getMargin(top: 24, left: 16, right: 16, bottom: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius:
//         BorderRadius.circular(getHorizontalSize(20)),
//         boxShadow: [
//           BoxShadow(
//             color: Color(0x14000000),
//             blurRadius: 13,
//             offset: Offset(0, 2),
//             spreadRadius: 0,
//           )
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: getPadding(left: 20),
//             child: Text(
//               widget.date??'11-8',
//               style: TextStyle(
//                 color: Color(0xFF7C7C7C),
//                 fontSize: getFontSize(18),
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           Padding(
//             padding: getPadding(left: 20),
//             child: Text(
//               'Insulin',
//               style: TextStyle(
//                 color: appTheme.blueGray900,
//                 fontSize: getFontSize(22),
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ),
//           Padding(
//             padding: getPadding(
//                 left: 26.34, right: 25.26, top: 10, bottom: 20),
//             child: Divider(
//               thickness: getSize(1.5),
//               color: Color(0xFFE7E7E7),
//             ),
//           ),
//           Container(
//             height: getSize(230),
//             // Adjust the height as needed
//             child: SfCartesianChart(
//               backgroundColor: Colors.transparent,
//               borderColor: Colors.transparent,
//               borderWidth: 0,
//               plotAreaBorderWidth: 0,
//               primaryXAxis: CategoryAxis(
//                 majorGridLines: MajorGridLines(width: 0,),
//                 minimum: -0.5,
//               ),
//               primaryYAxis: NumericAxis(
//                 desiredIntervals: 2,
//                 majorGridLines: MajorGridLines(dashArray: [6]),
//                 axisLine: AxisLine(width: 0),
//                 labelFormat: '{value} G',
//                 interval: 25,
//               ),
//
//               trackballBehavior: TrackballBehavior(
//                   shouldAlwaysShow: true,
//                   lineColor: Color(0xFF7C7C7C),
//                   enable: true, // Enable trackball
//                   activationMode: ActivationMode.singleTap,
//                   lineType: TrackballLineType.none,
//                   tooltipSettings: InteractiveTooltip(
//                       connectorLineColor: Colors.red,
//                       enable: true,
//                       canShowMarker: false,
//                       // borderColor: Colors.red,
//                       borderRadius: getHorizontalSize(8),
//                       format:
//                       'point.y',
//                       color: Colors.black87,
//                       textStyle: TextStyle(
//                         color: Colors.white,
//                         fontSize: getFontSize(16),
//                         fontWeight: FontWeight.w400,
//                       )
//                   ),
//                   markerSettings: TrackballMarkerSettings(
//                   )
//               ),
//               selectionType:  SelectionType.cluster,
//               series: <ChartSeries<ChartData, String>>[
//                 ColumnSeries<ChartData, String>(
//                   dataSource: data,
//                   xValueMapper: (ChartData data, _) => data.category,
//                   yValueMapper: (ChartData data, _) => data.value,
//                   name: 'Insulin',
//                   selectionBehavior: SelectionBehavior(
//                     selectedColor: Color(0xFF694ACD),
//                     enable: true,
//                     unselectedColor:Color(0x1A694ACD),
//                   ),
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(getHorizontalSize(7)),topLeft: Radius.circular(getHorizontalSize(7))),
//                   color: Color(0x26694ACD),
//                 )
//
//               ],
//
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }