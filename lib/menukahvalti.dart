import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Tarifler/menemen.dart';
import 'Tarifler/pogaca.dart';
import 'anamenu.dart';

void main() {
  runApp(flutter_app5());
}

class flutter_app5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Quicksand"),
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => flutter_app4()));},),
          backgroundColor: Colors.brown[400],
          centerTitle: true,
          title: Text(
            "KAHVALTI",
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.brown,
          onPressed: () {
            print("click");
          },
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
                          builder: (context) => flutter_app9(),
                        ));
                    print("Menemen tıklandı.");
                  },
                  child: Image.asset("assets/images/menemen.jpeg"),
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
                            builder: (context) => flutter_app10(),
                          ));
                      print("Pogaca tıklandı.");
                    },
                    child: Image.asset("assets/images/pogaca.jpeg")),
              ),
            ),
          ],
        ));
  }
}
