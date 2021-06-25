import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'girisyap.dart';
import 'hakkinda.dart';

void main() {
  runApp(flutter_app2());
}

class flutter_app2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Quicksand"),
      home: Builder  (builder: (context)=>

          Scaffold(
            backgroundColor: Colors.grey[400],
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset("assets/images/mutfak.jfif",
                        width: 350, height: 250),
                    Text(
                      "YEMEK TARİFLERİ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Quicksand",
                        fontSize: 40,
                        color: Colors.brown[900],
                      ),
                    ),
                    Text(
                      "Lezzetli tarifler artık cebinizde.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Quicksand",
                        fontSize: 20,
                        color: Colors.brown,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(
                        horizontal: 75.0,
                      ),
                      color: Colors.brown[400],
                      child: ListTile(
                        leading: Icon(
                          Icons.account_circle_sharp,
                          color: Colors.white30,
                          size: 30,
                        ),
                        title: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => flutter_app3(),
                                ));
                            print("Giriş yapıldı");

                          },
                          child: Text(
                            "Giriş için tıklayınız.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),



                  ],
                ),
              ),
            ),
          ),

      ),
    );
  }
}
