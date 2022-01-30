import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  const OutputPage(
      {Key? key,
      this.decoratorValue,
      this.photographerValue,
      this.catererValue})
      : super(key: key);
  final int? decoratorValue;
  final int? photographerValue;
  final int? catererValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Output',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Table(
                // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: const {0: FlexColumnWidth(3)},
                children: [
                  TableRow(
                      decoration: const BoxDecoration(
                        color: Color(0xff845bef),
                      ),
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Decorator',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            decoratorValue!.toString(),
                            style: const TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ]),
                  TableRow(
                      decoration: const BoxDecoration(
                        color: Color(0xfff8b250),
                      ),
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Photographer',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            photographerValue!.toString(),
                            style: const TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ]),
                  TableRow(
                      decoration: const BoxDecoration(
                        color: Color(0xff0293ee),
                      ),
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Caterer',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            catererValue!.toString(),
                            style: const TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ]),
                  TableRow(
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            (catererValue! +
                                    photographerValue! +
                                    decoratorValue!)
                                .toString(),
                            style: const TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                height: 300,
                width: 300,
                child: PieChart(
                  PieChartData(
                    sectionsSpace: 0,
                    centerSpaceRadius: 0,
                    sections: [
                      PieChartSectionData(
                        color: const Color(0xff0293ee),
                        value: catererValue! + 0.0,
                        title: '$catererValue%',
                        radius: 150,
                        titleStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff),
                        ),
                      ),
                      PieChartSectionData(
                        color: const Color(0xff845bef),
                        value: decoratorValue! + 0.0,
                        title: '$decoratorValue%',
                        radius: 150,
                        titleStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff),
                        ),
                      ),
                      PieChartSectionData(
                        color: const Color(0xfff8b250),
                        value: photographerValue! + 0.0,
                        title: '$photographerValue%',
                        radius: 150,
                        titleStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
