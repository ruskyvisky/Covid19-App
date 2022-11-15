import 'package:covid19appwork/core/flutter_icons.dart';
import 'package:covid19appwork/widgets/Customappbarwidget.dart';
import 'package:covid19appwork/widgets/Graphicwidget.dart';
import 'package:flutter/material.dart';

class StatisticPage extends StatefulWidget {
  @override
  _StatisticPageState createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFefedf2),
      body: Stack(
        children: [
          Container(
            height: 275,
            decoration: BoxDecoration(
              color: Color(0xFF8d12fe),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Image.asset("assets/images/virus2.png"),
          ),
          Container(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Customappbarwidget(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "İstatistikler",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                buildStatistic(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(child: buildCinsiyet(FlutterIcons.male,Colors.orangeAccent, "Erkekler", "51,9%",Colors.orangeAccent)),
                      SizedBox(width:16),
                      Expanded(child: buildCinsiyet(FlutterIcons.female,Colors.pinkAccent, "Kadınlar", "48,1%",Colors.pink)),
                    ],
                  ),
                ),
                Center(child: Image.asset("assets/images/map.png",height: 135,))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildCinsiyet(IconData icon ,Color color,String title, String value, Color textcolor) {
    return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 2),
                            spreadRadius: 1,
                            blurRadius: 1)
                      ],
                    ),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              icon,
                              size: 60,
                              color: color,
                            ),
                            Column(
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      fontSize: 24),
                                ),
                                Text(
                                  "Pozitif\nVakalar",
                                  style: TextStyle(
                                      color: Colors.black38, height: 1.5),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height:20),
                          Text(value,style: TextStyle(color: textcolor,fontWeight: FontWeight.bold,fontSize: 32),)
                      ],
                    ),
                  );
  }

  Widget buildStatistic() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Colors.white),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(1, 2),
                spreadRadius: 1,
                blurRadius: 1)
          ]),
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(24),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 150,
              height: 150,
              child: DonutPieChart.withSampleData(),
              
            ),
            SizedBox(width: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildStatistics(Colors.blue, "Güncel Vakalar", "7,893,700"),
                buildStatistics(
                    Colors.greenAccent, "İyileşen Hastalar", "3,766,886"),
                buildStatistics(Colors.redAccent, "Ölümler", "459.621"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStatistics(Color color, String gnclvka, String vksys) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          FlutterIcons.label,
          size: 45,
          color: color,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              gnclvka,
              style: TextStyle(color: Colors.black38),
            ),
            SizedBox(
              height: 5,
            ),
            Text(vksys),
          ],
        )
      ],
    );
  }
}
