import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(flutter_app18());
}

class flutter_app18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Quicksand"),
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset("assets/images/hakkinda.jpg",
                    width: 350,height:250),
                Card(
                  margin: EdgeInsets.symmetric(
                      horizontal: 120.0,vertical: 8
                  ),
                  color: Colors.brown[400],
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white30,size: 30,),
                    title: Text(
                      "Hakkında:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text(
                    " Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301052 numaralı Tuğçe Soytorun tarafından 25 Haziran 2021 günü yapılmıştır.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Quicksand",
                      fontSize: 14,
                      color: Colors.brown,
                    ),
                  ),



                ),
              ],),
          ),
        ),
      ),
    );
  }
}