import 'package:alerta_seguridad_ciudadana/Services/authentication.dart';
import 'package:alerta_seguridad_ciudadana/widget/getButtom.dart';
import 'package:flutter/material.dart';

class paginaPerfil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _PaginaPerfil(),
    );
  }
}

class _PaginaPerfil extends StatelessWidget {
  static const String routeName = 'perfil';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
      children: <Widget>[
        Container(
                   height: 1000,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFE53935),
                        Color(0xFFEF9A9A),

                    ])
                  ),
                ),
        
        Positioned(
            width: 350.0,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: <Widget>[
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: ExactAssetImage("assets/foto_perfil.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                SizedBox(height: 70.0),
                Text(
                  'Bienvenido',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                Text(
                  'Maria Agreda',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 15.0),
                Text(
                  'magredatapia@gmail.com',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: _botonEditar(),
                  ),
                ),
              ],
            ))
      ],
    ));
}
Widget _botonEditar() {
    return ApptButtom(
      color: Colors.redAccent,
      name: "Cerrar Sesión",
      onPressed: () {
        
      },
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return true;
  }
}
