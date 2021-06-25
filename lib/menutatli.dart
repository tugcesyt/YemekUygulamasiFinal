import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Tarifler/Cheesecake.dart';
import 'Tarifler/nokul.dart';
import 'anamenu.dart';

void main() {
  runApp(flutter_app8());
}

class flutter_app8 extends StatelessWidget {
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
            "TATLI/HAMUR İŞİ",
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
                          builder: (context) => flutter_app16(),
                        ));
                    print("Nokul tıklandı.");
                  },
                  child: Image.asset("assets/images/nokul.jpeg"),
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
                          builder: (context) => flutter_app17(),
                        ));
                    print("Cheesecake tıklandı.");
                  },
                  child: Image.asset("assets/images/cheesecake.jpeg"),
                ),
              ),
            ),

          ],
        ));
  }
}
