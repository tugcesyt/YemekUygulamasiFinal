
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'digerleri.dart';
class bizeulas2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: new Text(
                    "Görüş, öneri ve şikayetleriniz için buradayız."
                        " Aşağıdaki bilgilerden bize ulaşabilirsiniz. ",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54),

                  ),
                ),

                new Text(""),
                new Text(
                  "Telefon Numarası:",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.brown[400]),
                ),
                new Text(
                  '''0555 555 55 55''',
                  style: new TextStyle(fontSize: 17, color: Colors.black),
                ),
                new Text(""),
                new Text(
                  "Mail Adresi:",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.brown[400]),
                ),
                new Text(
                  '''yemektarifleri@gmail.com''',
                  style: new TextStyle(fontSize: 17, color: Colors.black),
                ),
                new Text(""),
                new Text(""),
                new Text(""),
                new Text(""),

                new Text(
                  "Görüşleriniz için teşekkür ederiz.",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.brown[400]),
                ),

                new Text(""),

              ],
            ),
          ),
        ],
      ),
    );

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      home: new Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: new AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => digerleri2()));
              },
            ),
            title: new Text("📝 BİZE ULAŞIN 📝"),
            backgroundColor: Colors.brown[400],
          ),

          body:
          new ListView(
              children: <Widget>[
                new Image.asset("assets/images/bizeulas.jpeg", fit: BoxFit.cover),
                titleSection

              ]
          )),
    );
  }
}