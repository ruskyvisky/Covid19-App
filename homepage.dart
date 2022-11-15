import 'package:covid19appwork/core/flutter_icons.dart';
import 'package:covid19appwork/istatistikler.dart';
import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFefedf2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF8d12fe),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              padding: EdgeInsets.only(top: 25, bottom: 30),
              child: Stack(
                children: [
                  Image.asset("assets/images/virus2.png"),
                  buildHeader(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Covid-19",
                            style: TextStyle(color: Color(0xFF8d12fe))),
                        TextSpan(
                          text: "?",
                        ),
                      ],
                      text: "Nedir bu ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    height: 180,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildSemptom("assets/images/1.png", "Ateş"),
                        buildSemptom("assets/images/2.png", "Kuru Öksürük"),
                        buildSemptom("assets/images/3.png", "Baş Ağrısı"),
                        buildSemptom("assets/images/4.png", "Nefes Darlığı"),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Al!",
                            style: TextStyle(color: Colors.black87)),
                      ],
                      text: "Önlemini ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xFF8d12fe)),
                    ),
                  ),
                  Container(
                    height: 120,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildSolution("assets/images/a10.png", "    Sık  Sık",
                            "Ellerini  Yıka"),
                        buildSolution("assets/images/a4.png", "  Öksürürken",
                            "  Ağzını kapa!"),
                        buildSolution("assets/images/a6.png", " Temizliğine",
                            "   Dikkat et!"),
                         buildSolution("assets/images/a9.png", "    Maske",
                            "    Kullan"),    
                      ],
                    ),
                  ),
             GestureDetector(
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (_) => StatisticPage(),),);
               },
                            child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Row(
            children: [
                  
                     Container(
         
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width* 0.9,
          decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 3)
                    ]),
         
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                
                children: [
                  
                      Image.asset("assets/images/map.png"),
                      SizedBox(width:10),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Vakalar\n", style: TextStyle(color: Color(0xFF8d12fe)))
                          ],
                          text: " Dünyadaki\n ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black87),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios),)
                ],
            ),
          ),
          
        ),
                  
            ],
          ),
               ),
             ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSemptom(
    String yol,
    String semptom,
  ) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Color(0xFF8d12fe).withOpacity(0.1), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(1, 1),
                    spreadRadius: 1,
                    blurRadius: 3)
              ]),
          padding: EdgeInsets.only(top: 10),
          child: Image.asset(yol),
          margin: EdgeInsets.only(right: 25),
        ),
        SizedBox(height: 10),
        Text(
          semptom,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        
      ],
    );
  }

  Widget buildSolution(String yol, String semptom, String yazi2) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 170,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 3)
                ]),
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Image.asset(yol),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: yazi2, style: TextStyle(color: Colors.black87))
                      ],
                      text: "$semptom\n",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Color(0xFF8d12fe)),
                    ),
                  ),
                )
              ],
            ),
            margin: EdgeInsets.only(right: 2),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAppbar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Covid-19",
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Uygulama geliştiricilerine bağış yapmak ister misiniz?",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Hasta olduğunuzu düşünüyorsanız ambulans çağırabilirsiniz!",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: RaisedButton(
                  child: Text(
                    "BAĞIŞ YAP",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  onPressed: () {},
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: RaisedButton(
                  child: Text(
                    "AMBULANS",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  onPressed: () {
                    launch("tel://112");
                  },
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildAppbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(FlutterIcons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage("assets/images/profile.png"))),
        )
      ],
    );
  }
}
