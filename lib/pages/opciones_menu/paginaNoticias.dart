import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class paginaNoticia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _PaginaNoticia(),
    );
  }
}


class _PaginaNoticia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'http://www.munitrujillo.gob.pe/noticiasmpt/',
        onWebViewCreated: (WebViewController webViewController) {
        },
      ),
      
    );
  }

 
}

