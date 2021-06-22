import 'package:flutter/material.dart';
import 'package:admin_panel/constants.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatelessWidget {
  Chart({
    Key? key,
  }) : super(key: key);

  final List<PieChartSectionData> paiChartSelecionDatas = [
    PieChartSectionData(
      value: 25,
      showTitle: false,
      radius: 25,
      color: primaryColor,
    ),
    PieChartSectionData(
      value: 20,
      showTitle: false,
      radius: 22,
      color: Color(0xFF26E5FF),
    ),
    PieChartSectionData(
      value: 10,
      showTitle: false,
      radius: 19,
      color: Color(0xFFFFCF26),
    ),
    PieChartSectionData(
      value: 15,
      showTitle: false,
      radius: 16,
      color: Color(0xFFEE2727),
    ),
    PieChartSectionData(
      value: 15,
      showTitle: false,
      radius: 13,
      color: primaryColor.withOpacity(0.1),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              centerSpaceRadius: 70,
              sections: paiChartSelecionDatas,
              startDegreeOffset: -90,
              sectionsSpace: 0,
            ),
          ),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '29.1',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                'of 128 GB',
              )
            ],
          ))
        ],
      ),
    );
  }
}
