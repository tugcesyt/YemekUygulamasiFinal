import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menutatli.dart';


void main() => runApp(new flutter_app17());

class flutter_app17 extends StatelessWidget {
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
                    "CHEESECAKE",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                new Text("Bu tarif 1 büyük tepsi içindir."),
                new Text(" "),
                new Text("Kreması için:"),
                new Text(" "),
                new Text("1 yemek kaşığı nişasta, 3 adet yumurta, 1 adet limon kabuğu rendesi(ve suyu), 1 su bardağı şeker,"),
                new Text("1 kutu sıvı krema, 600 gram labne peyniri, 1 paket vanilya."),
                new Text(" "),
                new Text("Tabanı için:"),
                new Text(" "),
                new Text("2 paket tam buğdaylı bisküvi, 125 gram eritilmiş tereyağı."),
                new Text(" "),
                new Text("Sosu için:"),
                new Text(" "),
                new Text("1/2 su bardağı şeker, 2 yemek kaşığı mısır nişastası, 1 su bardağı su, 1 paket vanilya,"),
                new Text("300 gram frambuaz(donmuş ya da taze)"),
                new Text(" "),
                new Text("Frambuazlı Cheesecake Tarifinin Pişirme Önerisi:"),
                new Text(" "),
                new Text("*Eğer fırının kapağını açtığınızda cheesecake sallanıyorsa pişmemiş demektir."),
                new Text("*Biraz daha pişirebilirsiniz. Pişme süresi fırına göre değişebilir. Ayrıca muhakkak kelepçeli kap kullanın."),
                new Text(" "),
                new Text("-Kelepçeli kalıbın kenar duvarlarını kaplamak için yağlı kağıtları kesin."
                ),
                new Text("-Tabanı ve kenarları margarin sürerek yağlı kağıt ile kaplayın."
                ),
                new Text("-Daha sonra kalıbın alt tabanını su geçmemesini sağlamak için alüminyum folyo ile kaplayın."
                ),
                new Text("-Frambuzları yarım su bardağı şeker ve bir bardak su ile karıştırıp buzdolabında beklemeye alın."
                ),
                new Text("-Pasta tabanı için 2 paket tam buğday unlu bisküviyi rondodan geçirin."
                ),
                new Text("-125 gram eritilmiş tereyağı üzerine ekleyip rondodan, bisküvilerle birlikte geçirin."
                ),
                new Text("-Hazırlamış olduğunuz kalıba bisküvili karışımı bir spatula ya da bardak ile iyice bastırarak yayın."
                ),
                new Text("-Pürüzsüz bir yüzey yaratmaya çalışın. Dinlenmesi için pasta tabanını kalıbıyla birlikte buzdolabında bekletin."
                ),
                new Text("-Cheesecake kreması için; 3 yumurta, 600 gram labne peynir, 1 su bardağı toz şeker, 1 kutu sıvı krema,"
                ),
                new Text("-1 limon kabuğu rendesi ve suyu, 1 paket vanilya, 1 yemek kaşığı dolusu nişastayı bir kaba alın."
                ),
                new Text("-Mikserle pürüzsüz hale gelinceye kadar karıştırın."
                ),
                new Text("-Buzdolabından çıkardığınız kalıba kremalı karışımı dökün."
                ),
                new Text("-Su ile doldurduğunuz derin bir fırın tepsisinin içine kalıbı yerleştirerek 25 dakika 180 derecede;"
                ),
                new Text("-25-30 dakika da 150 derecede pişirin."
                ),
                new Text("-Daha sonra fırını kapatıp bir saat de fırın içinde bekletin. Bu şekilde cheesecake çatlamadan pişecektir."
                ),
                new Text("-Cheesecake dışarıda soğurken farmbuazlı sosu hazırlamaya başlayın. Dolaptan çıkardığınız frambuazları bir blender ile ezin."
                ),

                new Text("-Bir çay bardağı su ile 2 yemek kaşığı nişastayı bir kasede açın."
                ),
                new Text("-Tencereye ekleyin. Kısık ateşte karıştırarak pişirin."
                ),
                new Text("-Sosunuz yoğun bir kıvama gelince içine bir paket vanilya ekleyip, karıştırın ve soğumaya bırakın."
                ),
                new Text("-Cheesecake ve frambuaz sosu soğuyunca, cheesecake’in üzerine sosunu döküp buzdolabında 1 gece beklemeye alın."
                ),
                new Text("-Buzdolabından çıkardığınız cheesecake’i kalıbından çıkarıp taze ya da donmuş frambuazla"
                    " ve nane yapraklarıyla süsleyerek servis edebilirsiniz."
                ),
                new Text(" "
                ),
                new Text("Afiyet olsun!"
                ),
              ],
            ),
          ),
          new Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          new Text(" 83"),
        ],
      ),
    );

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      home: new Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: new AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => flutter_app8()));},),
            title: new Text("FRAMBUAZLI CHEESECAKE TARİFİ"),
            backgroundColor: Colors.brown[400],
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset("assets/images/cheesecake.jpeg",
                  fit: BoxFit.cover),
              titleSection
            ],
          )),
    );
  }
}