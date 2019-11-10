import 'package:alerta_seguridad_ciudadana/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routName = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                    Container(
                      height: 300,
                      child: FadeAnimation(1.8, Container(
                         height: 400.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/escudo_ascope.png')
                          )
                        ),
                      )),
                    ),
                    Container(
                      height: 100,
                      child: FadeAnimation(1.8, Container(
                         height: 400.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/logo_letra.png')
                          )
                        ),
                      )),
                    ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     FadeAnimation(
                      2.0, Container(
                       padding: EdgeInsets.all(5),
                       child: Form(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: <Widget>[
                             Container(
                               margin: EdgeInsets.only(top: 5),
                                 child: Text("¿Ya tienes una Cuenta?", style: TextStyle(color: Colors.black38, fontSize: 18, fontWeight: FontWeight.w500),),
                             ),

                             SizedBox(height: 25),
                             
                             
                           ],
                         ),
                       ),
                      ),
                     ),
                   ],
                 ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}