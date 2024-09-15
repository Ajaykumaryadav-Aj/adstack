// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class LineChartCard extends StatelessWidget {
//   const LineChartCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final data = LineData();

//     return CustomCard(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Steps Overview",
//             style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//           ),
//           const SizedBox(height: 20),
//           AspectRatio(
//             aspectRatio: 16 / 6,
//             child: LineChart(
//               LineChartData(
//                 lineTouchData: LineTouchData(
//                   handleBuiltInTouches: true,
//                 ),
//                 gridData: FlGridData(show: false),
//                 titlesData: FlTitlesData(
//                   rightTitles: AxisTitles(
//                     sideTitles: SideTitles(showTitles: false),
//                   ),
//                   topTitles: AxisTitles(
//                     sideTitles: SideTitles(showTitles: false),
//                   ),
//                   bottomTitles: AxisTitles(
//                     sideTitles: SideTitles(
//                       showTitles: true,
//                       getTitlesWidget: (double value, TitleMeta meta) {
//                         return data.bottomTitle[value.toInt()] != null
//                             ? SideTitleWidget(
//                                 axisSide: meta.axisSide,
//                                 child: Text(
//                                     data.bottomTitle[value.toInt()].toString(),
//                                     style: TextStyle(
//                                         fontSize: 12, color: Colors.grey[400])),
//                               )
//                             : const SizedBox();
//                       },
//                     ),
//                   ),
//                   leftTitles: AxisTitles(
//                     sideTitles: SideTitles(
//                       getTitlesWidget: (double value, TitleMeta meta) {
//                         return data.leftTitle[value.toInt()] != null
//                             ? Text(data.leftTitle[value.toInt()].toString(),
//                                 style: TextStyle(
//                                     fontSize: 12, color: Colors.grey[400]))
//                             : const SizedBox();
//                       },
//                       showTitles: true,
//                       interval: 1,
//                       reservedSize: 40,
//                     ),
//                   ),
//                 ),
//                 borderData: FlBorderData(show: false),
//                 lineBarsData: [
//                   LineChartBarData(
//                     color:Colors.amber,
//                     barWidth: 2.5,
//                     belowBarData: BarAreaData(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
                         
//                           Colors.transparent
//                         ],
//                       ),
//                       show: true,
//                     ),
//                     dotData: FlDotData(show: false),
//                     spots: data.spots,
//                   )
//                 ],
//                 minX: 0,
//                 maxX: 120,
//                 maxY: 105,
//                 minY: -5,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }









// // class YearlyChart extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Yearly Line Chart'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: LineChart(
// //           LineChartData(
// //             gridData: FlGridData(show: false),
// //             titlesData: FlTitlesData(
// //               bottomTitles: AxisTitles(
// //                 drawBelowEverything: true,
// //                 axisNameSize: 40,
// //                 // getTitlesWidget: (value, meta) {
// //                 //   const style = TextStyle(
// //                 //     fontSize: 14,
// //                 //     fontWeight: FontWeight.bold,
// //                 //   );
// //                 //   return SideTitleWidget(
// //                 //     axisSide: meta.axisSide,
// //                 //     child: Text(
// //                 //       '${value.toInt()}',
// //                 //       style: style,
// //                 //     ),
// //                 //   );
// //                 // },
// //               ),
// //               leftTitles: AxisTitles(
// //                 drawBelowEverything: true,
// //                 axisNameSize: 40,
// //                 // sideTitles: (value, meta) {
// //                 //   const style = TextStyle(
// //                 //     fontSize: 14,
// //                 //     fontWeight: FontWeight.bold,
// //                 //   );
// //                 //   return SideTitleWidget(
// //                 //     axisSide: meta.axisSide,
// //                 //     child: Text(
// //                 //       '${value.toInt()}',
// //                 //       style: style,
// //                 //     ),
// //                 //   );
// //                 // },
// //               ),
// //             ),
// //             borderData: FlBorderData(
// //               show: true,
// //               border: Border.all(
// //                 color: const Color(0xff37434d),
// //                 width: 1,
// //               ),
// //             ),
// //             lineBarsData: [
// //               LineChartBarData(
// //                 spots: [
// //                   FlSpot(0, 1),
// //                   FlSpot(1, 2),
// //                   FlSpot(2, 1.5),
// //                   FlSpot(3, 2.5),
// //                   FlSpot(4, 3),
// //                   // Add more points as needed
// //                 ],
// //                 isCurved: true,
// // color: Colors.blue,                dotData: FlDotData(show: true),
// //                 belowBarData: BarAreaData(show: false),
// //               ),
// //               LineChartBarData(
// //                 spots: [
// //                   FlSpot(0, 0.5),
// //                   FlSpot(1, 1.5),
// //                   FlSpot(2, 1.2),
// //                   FlSpot(3, 2.2),
// //                   FlSpot(4, 2.8),
// //                   // Add more points as needed
// //                 ],
// //                 isCurved: true,
// //                 color: Colors.red,
// //                 dotData: FlDotData(show: true),
// //                 belowBarData: BarAreaData(show: false),
// //               ),
// //             ],
// //             lineTouchData: LineTouchData(
// //               touchTooltipData: LineTouchTooltipData(
// //               // touchCallback: (LineTouchResponse touchResponse) {},
// //               // handleBuiltInTouches: true,
// //             ),
// //           ),
// //         ),
// //       ),
// //     ));
// //   }
// // }
