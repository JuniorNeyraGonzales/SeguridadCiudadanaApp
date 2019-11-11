import 'package:alerta_seguridad_ciudadana/pages/homepage.dart';
import 'package:alerta_seguridad_ciudadana/pages/login_page.dart';
import 'package:alerta_seguridad_ciudadana/pages/opciones_menu/paginaNoticias.dart';
import 'package:alerta_seguridad_ciudadana/pages/register_page.dart';
import 'package:alerta_seguridad_ciudadana/pages/welcome.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//HomePage(page: 0,)
void main() async{
  
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelconScreen(),
      theme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.black45,
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{
       WelconScreen.routName: (BuildContext context) => WelconScreen(),
       LoginPage.routName: (BuildContext context) => LoginPage(),
       RegistrarsePage.routName: (BuildContext context) => RegistrarsePage(),
       HomePage.routName: (BuildContext context) => HomePage(),
      }
    );
  }
}