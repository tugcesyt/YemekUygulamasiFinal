import 'package:flutter/material.dart';

import 'anamenu.dart';
import 'kayitol.dart';

//void main() => runApp(flutter_app3());

class flutter_app3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Giriş Ekranı",
        theme: ThemeData(
            primarySwatch: Colors.brown,
            accentColor: Colors.brown,
            fontFamily: "Quicksand"),
        home: Builder(
          builder: (context) => Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.grey[300],
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => flutter_app3()),
                    );
                  },
                ),
                title: Text(
                  "Giriş Ekranı",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              body: LoginHome()),
        ));
  }
}

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LoginHome(context);
  }
}

Widget _LoginHome(BuildContext context) {
  final emailField = TextField(
    obscureText: false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Kullanıcı Adı: ",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  final passwordField = TextField(
    obscureText: true,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Şifre: ",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  final LoginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.brown[400],
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => flutter_app4(),
            ));
      },
      child: Text(
        "Giriş yap",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
      ),
    ),
  );

  final RegisterButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.brown[400],
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => kayitol()));
      },
      child: Text(
        "Üye değil misin? Kayıt ol",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
      ),
    ),
  );
  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/kapak (2).jfif"),
            SizedBox(
              height: 10.0,
            ),
            emailField,
            SizedBox(
              height: 10,
            ),
            passwordField,
            SizedBox(
              height: 15.0,
            ),
            LoginButton,
            SizedBox(
              height: 10.0,
            ),
            RegisterButton
          ],
        ),
      ),
    ),
  );
}
