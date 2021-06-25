import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'girisyap.dart';
import 'menuanayemek.dart';
import 'menudiyet.dart';
import 'menukahvalti.dart';
import 'menutatli.dart';
import 'secenekler.dart';
void main() {
  runApp(MaterialApp(home: flutter_app4()));
}

class flutter_app4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Quicksand"),
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          actions: [
            PopupMenuButton(
                color: Colors.brown[400],
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("Diğer Seçenekler"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("Görüş Bildirin"),
                        value: 2,
                      )
                    ])
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => flutter_app3()));
            },
          ),
          backgroundColor: Colors.brown[400],
          centerTitle: true,
          title: Text(
            "MENÜ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: YemekSayfasi(
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.brown[400],
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => digerleri(),
                ));
            print("Kahvaltı tıklandı.");
          },

          icon: Icon(Icons.restaurant_menu),
          label: Text(""),
        ),
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
                        builder: (context) => flutter_app5(),
                      ));
                  print("Kahvaltı tıklandı.");
                },
                child: Image.asset("assets/images/breakfeast.jpg"),
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
                          builder: (context) => flutter_app6(),
                        ));
                    print("Ana yemek tıklandı.");
                  },
                  child: Image.asset("assets/images/dinner.jpg")),
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
                          builder: (context) => flutter_app7(),
                        ));
                    print("Diyet tıklandı.");
                  },
                  child: Image.asset("assets/images/diet.jpg")),
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
                        builder: (context) => flutter_app8(),
                      ));
                  print("Tatli tıklandı.");
                },
                child: Image.asset("assets/images/tatli.jpeg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
