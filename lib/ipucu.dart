
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'secenekler.dart';
class ipucu2 extends StatelessWidget {
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
                    child: new Text(  '''Yemek yapmak sanılanın aksine oldukça detaylı bir iştir. Öğrenilmesi gereken binlerce şey vardır ve bu uzun yolculukta, yolu biraz kısaltmak için gerekli 
bilgilerin bazılarını şu şekilde sıralayabiliriz:''',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54),

                  ),
                ),

                new Text(""),
                new Text(
                  "Neden çorbamın kıvamını tutturamıyorum?",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.brown[400]),
                ),
                new Text(
                  '''Sos ve çorba yaparken az miktarda un ekleyin. Un, kıvam verecektir.''',
                  style: new TextStyle(fontSize: 17, color: Colors.black),
                ),
                new Text(""),
                new Text(
                  "Milföylerim hep fırın tepsisine yapışıyor. Ne yapabilirim?",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.brown[400]),
                ),
                new Text(
                  '''Milföy hamurunu fırına vermeden önce tepsiyi yağladıktan sonra üzerine galeta unu serpin. Bu yapışmasını önleyecektir.''',
                  style: new TextStyle(fontSize: 17, color: Colors.black),
                ),
                new Text(""),
                new Text(
                  "Yemeğin tuzunu çok kaçırdım! Ne yapabilirim?",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.brown[400]),
                ),
                new Text(
                  '''Yemeğin tuzu fazla kaçtıysa tencereye kabukları soyulmuş yarım patates atın. Patates fazla atılan tuzu çekecektir.''',
                  style: new TextStyle(fontSize: 17, color: Colors.black),
                ),
                new Text(""),

                new Text(""),
                new Text(""),
                new Text(""),

                new Text(
                  "Sizin de ekleyeceğiniz öneriler varsa bizimle iletişime geçin!",
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
                    MaterialPageRoute(builder: (context) => digerleri()));
              },
            ),
            title: new Text("PİŞİRME İPUÇLARI"),
            backgroundColor: Colors.brown[400],
          ),

          body:
          new ListView(
              children: <Widget>[
                new Image.asset("assets/images/yemek.jpeg", fit: BoxFit.cover),
                titleSection

              ]
          )),
    );
  }
}