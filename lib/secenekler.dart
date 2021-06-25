import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yemekuygulamasi/anamenu.dart';
import 'package:yemekuygulamasi/profil.dart';
import 'ipucu.dart';
import 'sorular.dart';
import 'profil.dart';
import 'digerleri.dart';void main() {
  runApp(MaterialApp(home: digerleri()));
}

class digerleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Quicksand"),
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(

          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => flutter_app4()));
            },
          ),
          backgroundColor: Colors.brown[400],
          centerTitle: true,
          title: Text(
            "🍽",
            style: TextStyle(color: Colors.white,fontSize: 50),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profil(),
                      ));
                },
                child: Image.asset("assets/images/profil - Kopya.jpeg"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ipucu2(),
                        ));
                  },
                  child: Image.asset("assets/images/ipucu - Kopya.jpeg")),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => flutter_app16(),
                        ));
                  },
                  child: Image.asset("assets/images/sss.jpeg")),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => digerleri2(),
                      ));
                },
                child: Image.asset("assets/images/digerleri - Kopya.jpeg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
