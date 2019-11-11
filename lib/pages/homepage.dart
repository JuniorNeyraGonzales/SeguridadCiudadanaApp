
import 'package:alerta_seguridad_ciudadana/Animation/FadeAnimation.dart';
import 'package:alerta_seguridad_ciudadana/pages/opciones_menu/paginaMapa.dart';
import 'package:alerta_seguridad_ciudadana/pages/opciones_menu/paginaNoticias.dart';
import 'package:alerta_seguridad_ciudadana/pages/opciones_menu/paginaPerfil.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routName = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indicePaginas = 0;

  //listado de paginas

  final paginaMapa _listMapa = paginaMapa();
  final paginaNoticia _listNoticia= paginaNoticia();
  final paginaPerfil _listPerfil= paginaPerfil();

  //muestra la pagina seleccionada
  Widget _showPage = paginaMapa();

  // listado de pagina segun seleccione en el bottom navigationbar

  Widget _seleccionarPagina (int page) {
    switch (page) {
      case 0:
        return _listMapa;
        break;
      case 1:
        return _listNoticia;
        break;
      case 2:
        return _listPerfil;
        break;
      default: 
        return Container(
          child: Center(
            child: Text("No ha seleccionado Niguna Pagina",
            style: TextStyle(
              fontSize: 30
            ),
            ),
          ),
        );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _indicePaginas,
          height: 75.0,
          items: <Widget>[
            Icon(Icons.map, size: 30),
            Icon(Icons.description, size: 30),
            Icon(Icons.person, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.redAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedindex) {
            setState(() {
              _showPage = _seleccionarPagina(tappedindex);
            });
          },
        ),
        body: Container(
          color: Colors.redAccent,
          child: Center(
            //child: Text(_indicePaginas.toString(), textScaleFactor: 10.0),
            child: _showPage,
          ),
        ));
  }
}

