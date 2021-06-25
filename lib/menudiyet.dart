import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Tarifler/dytpogacatarif.dart';
import 'Tarifler/tavuksalata.dart';
import 'anamenu.dart';

void main() {
  runApp(flutter_app7());
}

class flutter_app7 extends StatelessWidget {
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
            "DİYET",
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
                        builder: (context) => flutter_app14(),
                      ));
                  print("Salata tıklandı.");
                },
                child: Image.asset("assets/images/tavuklusalata.jpeg"),
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
                        builder: (context) => flutter_app15(),
                      ));
                  print("diyet pogaca tıklandı.");
                },
                child: Image.asset("assets/images/dytpogaca.jpeg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
