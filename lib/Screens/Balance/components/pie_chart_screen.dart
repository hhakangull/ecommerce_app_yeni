import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';

class PieChartScreen extends StatefulWidget {
  @override
  _PieChartScreenState createState() => _PieChartScreenState();
}

class _PieChartScreenState extends State<PieChartScreen> {
  @override
  void initState() {
    super.initState();
    _yukle(10, 20, 70);
  }

  List<PieChartSectionData> _sections = new List<PieChartSectionData>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 1.9,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: PieChart(
                PieChartData(
                  borderData: FlBorderData(show: false),
                  sections: _sections,
                  centerSpaceRadius: 45,
                  sectionsSpace: 0,
                  centerSpaceColor: Colors.transparent,
                  startDegreeOffset: 0,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: bilgilendirme(321, 4352, 123),
            ),
          ],
        ),
      ),
    );
  }

  Widget bilgilendirme(var harcamalar, var odemeler, var alinacaklar) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Indicator(
            text: "Harcamalar",
            isSquare: true,
            color: Colors.red,
            textColor: Colors.white,
          ),
          Text("$harcamalar TL", style: textStyle()),
          Indicator(
            text: "Ödemeler",
            isSquare: true,
            color: Colors.amber,
            textColor: Colors.white,
          ),
          Text("$odemeler TL", style: textStyle()),
          Indicator(
            text: "Alınacaklar",
            isSquare: true,
            color: Colors.green,
            textColor: Colors.white,
          ),
          Text("$alinacaklar TL", style: textStyle()),
        ],
      ),
    );
  }

  TextStyle textStyle() => TextStyle(fontSize: 18, color: Colors.white);
  void _yukle(double harcamalar, double odemeler, double alinacaklar) {
    PieChartSectionData _item1 = PieChartSectionData(
      color: Colors.amber,
      value: harcamalar,
      title: "%$harcamalar",
      radius: 40,
      titleStyle: TextStyle(color: Colors.white, fontSize: 18),
    );
    PieChartSectionData _item2 = PieChartSectionData(
      color: Colors.red,
      value: odemeler,
      title: "%$odemeler",
      radius: 40,
      titleStyle: TextStyle(color: Colors.white, fontSize: 18),
    );
    PieChartSectionData _item3 = PieChartSectionData(
      color: Colors.green,
      value: alinacaklar,
      title: "%$alinacaklar",
      radius: 40,
      titleStyle: TextStyle(color: Colors.white, fontSize: 18),
    );
    _sections = [_item1, _item2, _item3];
  }
}
