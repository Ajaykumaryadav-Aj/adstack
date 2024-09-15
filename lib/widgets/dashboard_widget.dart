import 'package:adstacks/main.dart';
import 'package:adstacks/widgets/chart.dart';
import 'package:adstacks/widgets/ethereum_card.dart';
import 'package:adstacks/widgets/header_widget.dart';
import 'package:adstacks/widgets/smallcard_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 18),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: HeaderWidget(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: EthereumCard(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: SmallcardWidget(),
          ),
        ],
      ),
    );
  }
}
