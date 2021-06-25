import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menutatli.dart';


void main() => runApp(new flutter_app16());

class flutter_app16 extends StatelessWidget {
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
                    "NOKUL",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                new Text("Bu tarif 10-12 kişiliktir."),
                new Text(" "),
                new Text("Malzemeler:"),
                new Text(" "),
                new Text(
                    "2 adet yumurta (birinin sarısı üzeri için), 2 yemek kaşığı yoğurt, 1 çay bardağı sıvı yağ"
                        " 1 su bardağı ılık su, 1 yemek kaşığı sirke (üzüm veya elma),1 çay kaşığı karbonat,"
                        " 1 paket instant maya, 1 yemek kaşığı toz şeker, 5,5 su bardağı un"),
                new Text(" "),
                new Text("İçi için:"),
                new Text(
                    "1 sb biraz eksik toz şeker, 2 su bardağı ceviz, 1 tatlı kaşığı tarçın, 2,5 su bardağı kuru üzüm,"
                        "Sıcak su (kuru üzümü ıslatmak için)  "),
                new Text(" "),
                new Text(
                    "-Öncelikle uygun bir kaba aldığımız kuru üzüme üzerine geçecek kadar "
                        "sıcak suyu ilave edelim."),
                new Text(
                    "-Üzümleri suyun içerisinde hamuru hazırlayıncaya kadar bekletelim."),
                new Text(
                    "-Yoğurma kabına birinin sarısını üzeri için ayırdığımız yumurta, yoğurt, sıvı yağ, "
                        "ılık su, sirke, karbonat, instant maya ve toz şekeri alarak iyice karıştıralım."),
                new Text(
                    "-Yavaş yavaş unu ekleyerek hamuru yoğurmaya başlayalım. "),
                new Text(
                    "-Yumuşak kıvamlı ele yapışmayan bir hamur elde edinceye kadar yoğuralım. "),
                new Text(
                    "-İç harcı için üzümlerin suyunu süzdürelim ve temiz bir bezin üzerine alalım. "
                        "Kuru üzümleri güzelce kurulayalım. "),
                new Text(
                    "-Daha sonra uygun bir kap içerisine aldığımız üzümlerin üzerine toz şeker,"
                        " ceviz ve tarçını alarak karıştıralım. "),
                new Text(
                    "-Hamuru tezgahın üzerinde toparlayarak 8 eşit parçaya keselim ve bezeler oluşturalım. "),
                new Text(
                    "-Bezelerin üzerini örtelim ki açıncaya kadar kurumasın. "),
                new Text(
                    "-Unlanmış tezgahın üzerine bezelerden bir tanesini önce"
                        " elimizle hafifçe bastırarak açalım. "),
                new Text(
                    "-Daha sonra merdane ile çok inceltmeden açabildiğimiz kadar açalım. "),
                new Text(
                    "-Hamurun üzerine eritilmiş tereyağından heryerine gelecek şekilde sürelim. "),
                new Text(
                    "-Hazırladığımız üzümlü iç harcını da bolca serpelim. "),
                new Text(
                    "- Bezelerimizden bir diğer tanesini de aynı şekilde açalım, açtığımız bezeyi "
                        "iç harcının üzerine yerleştirelim. "),
                new Text("-Üzerine tekrar eritilmiş tereyağından sürelim. "),
                new Text(
                    "-Sardığımızda dökülmemesi için uç kısmından bir boşluk kalacak şekilde iç harcını serpelim. "),
                new Text(
                    "-Ardından rulo şeklinde saralım ve hafifçe düzeltelim. "),
                new Text(
                    "-Yaklaşık 3-4 cm genişliğinde keselim.Diğer bezelerimizi de aynı şekilde hazırlayalım. "),
                new Text(
                    "- Hazırladığımız nokulları pişirme kağıdı serdiğimiz fırın tepsisine yerleştirelim. "),
                new Text(
                    "-Üzerlerine ayırdığımız yumurta sarısını eritilmiş tereyağı ile karıştırarak sürelim. "),
                new Text(
                    "- Önceden ısıttığımız 170° fırında yaklaşık 40 dk pişirelim. "),
                new Text(
                    "-Fırından aldıktan sonra 10 dk kadar dinlendirdikten sonra servis edebilirsiniz.  "),
                new Text(" "),
                new Text("Afiyet olsun! "),
              ],
            ),
          ),
          new Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          new Text(" 72"),
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
            title: new Text("BAFRA NOKULU TARİFİ"),
            backgroundColor: Colors.brown[400],
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset("assets/images/nokul.jpeg",
                  fit: BoxFit.cover),
              titleSection
            ],
          )),
    );
  }
}