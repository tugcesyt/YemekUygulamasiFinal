import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'anamenu.dart';
import 'girisyap.dart';

void main() {
  runApp(kayitol());
}

class kayitol extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: EditProfileUI(),
    );
  }
}

class EditProfileUI extends StatefulWidget {
  @override
  _EditProfileUIState createState() => _EditProfileUIState();
}

class _EditProfileUIState extends State<EditProfileUI> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          title: Text(" Profil Doldurma 📝"),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => flutter_app3() ));
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.brown,
              ),
              onPressed: () {},
            ),
          ]),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white30),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 5,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://i.pinimg.com/564x/e5/6b/02/e56b02089275a812ebbf975f47b8f768.jpg'),
                          )),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 4, color: Colors.brown[400]),
                              color: Colors.grey[400]),
                          child: Icon(
                            Icons.edit,
                            color: Colors.brown[400],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildTextField("Ad ve Soyad", "Adınızı ve soyadınızı  giriniz.", false),
              buildTextField("Email", "Örnek: tugce@gmail.com", false),
              buildTextField("Şifre", "********", true),
              buildTextField("Doğum Tarihi", "Örnek: 23.04.2000", false),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: deprecated_member_use
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => flutter_app3() ));
                    },
                    child: Text("Vazgeç",
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          color: Colors.brown),
                    ),

                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => flutter_app4() ));
                    },
                    child: Text(
                      "Kaydet",
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          color: Colors.white),
                    ),
                    style:ElevatedButton.styleFrom(
                        primary: Colors.brown,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ) ,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {

    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField ?
            IconButton(
                icon: Icon(Icons.remove_red_eye, color: Colors.brown),
                onPressed: () {}
            ): null,
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
      ),
    );
  }
}
