import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:design/src/pages/botones_page.dart';
import 'package:design/src/pages/scroll_page.dart';
import 'package:design/src/pages/basico_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(

      statusBarColor: Colors.transparent,

    ));

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'basico',

      routes: {

        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'boton'  : (BuildContext context) => BotonesPage(),
 
      },
      
    );
  }
}