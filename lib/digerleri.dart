import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yemekuygulamasi/anamenu.dart';
import 'package:yemekuygulamasi/animasyon.dart';
import 'package:yemekuygulamasi/grafik.dart';
import 'package:yemekuygulamasi/profil.dart';
import 'hakkinda.dart';
import 'animasyon.dart';
import 'bizeulas.dart';void main() {
  runApp(MaterialApp(home: digerleri2()));
}

class digerleri2 extends StatelessWidget {
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
            "Diğer Seçenekler",
            style: TextStyle(color: Colors.white,fontSize: 20),
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
                        builder: (context) => bizeulas2(),
                      ));
                },
                child: Image.asset("assets/images/bizeulaskapak.jpeg"),
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
                          builder: (context) => flutter_app18(),
                        ));
                  },
                  child: Image.asset("assets/images/bilgiler.jpeg")),
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
                          builder: (context) => animasyon(),
                        ));
                  },
                  child: Image.asset("assets/images/degerlendirme.jpeg")),
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
                        builder: (context) => grafik2(),
                      ));
                },
                child: Image.asset("assets/images/grafik.jpeg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
