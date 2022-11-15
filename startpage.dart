import 'package:covid19appwork/homepage.dart';
import "package:flutter/material.dart";

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF8d12fe), Color(0xFF8d12fe).withOpacity(0.5)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Stack(
          children: [
            buildPadding(),
            Align(
              alignment: Alignment.topCenter,
                          child: Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Center(child: Image.asset("assets/images/virus.png")),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              right: 25,
                          child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                child: Image.asset("assets/images/person.png"),
              ),
            ),
            buildPositioned(context),
          ],
        ),
      ),
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Align(
        child: Image.asset("assets/images/logo.png"),
        alignment: Alignment.topCenter,
      ),
    );
  }

  Widget buildPositioned(BuildContext context) {
    return Positioned(
      bottom: 50,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Koronavirüs Hastalığı (Covid-19)",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "Sağlığın için evde kal Türkiye!",
            style: TextStyle(color: Colors.white, fontSize: 20, height: 1.5),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomePage(),),);
            },
                      child: Container(
              width: MediaQuery.of(context).size.width * .85,
              height: 50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(1, 1),
                      blurRadius: 3,
                      spreadRadius: 1,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: Text(
                  "Giriş Yap",
                  style: TextStyle(
                      color: Color(0xFF8d12fe),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
