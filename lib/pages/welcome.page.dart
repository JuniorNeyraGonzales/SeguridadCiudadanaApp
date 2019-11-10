import 'package:alerta_seguridad_ciudadana/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class WelconScreen extends StatefulWidget {
  static const String routName = 'welcome';

  @override
  _WelconScreenState createState() => _WelconScreenState();
}

class _WelconScreenState extends State<WelconScreen> {
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
                             
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 5.0),
                               child: Container(
                                   margin: EdgeInsets.only(top: 5),
                                   height: 40.0,
                                   child: RaisedButton(
                                    elevation: 0,
                                    highlightElevation: 15,
                                    color: Color(0xFFFF8A80),
                                    highlightColor: Color(0xfffa4e88).withOpacity(0.7),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0)),
                                    child: Text(
                                      "Iniciar Sesión",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 21.0,
                                      ),
                                    ),
                                    onPressed: (){Navigator.pushNamed(context, 'login');},
                                  ),
                               ),
                             ),
                            
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
                               child: Container(
                                 height: 40.0,
                                   margin: EdgeInsets.only(top: 5),
                                   child: RaisedButton(
                                    elevation: 0,
                                    highlightElevation: 10,
                                    color: Color(0xFFB71C1C),
                                    highlightColor: Color(0xfffa4e88).withOpacity(0.7),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0)),
                                    child: Text(
                                      "Crear Cuenta",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21.0,
                                      ),
                                    ),
                                    onPressed: (){Navigator.pushNamed(context, 'registro');},
                                  ),
                               ),
                             ),
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