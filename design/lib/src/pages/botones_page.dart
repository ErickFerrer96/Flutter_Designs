import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    
    return Scaffold(

      body: Stack(

        children: <Widget>[

          _fondoApp(),

          SingleChildScrollView(

            child: Column(

              children: <Widget>[

                _titulos(),
                _botonesredondos(),

              ],

            ),
          ),
        ],
      ),

      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }


  Widget _fondoApp(){

    final gradiente = Container(

      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(

        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.2),
          end:FractionalOffset(0.0, 1.0),

          colors: [

            Color.fromRGBO(30,30,30, 1),
            Color.fromRGBO(0,0,0, 1),

          ]

        ),

      ),

    );

    final cajaAzul = Transform.rotate(

      angle: -pi/5.0,

      child: Container(

      height: 360,
      width:  360,

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(80),

        gradient: LinearGradient(
    

          colors: [

            Color.fromRGBO(41,89,223, 1),
            Color.fromRGBO(41,121,239, 1),

          ]

        ),

      ),

      ),

    );

    return Stack(
      children: <Widget>[

        gradiente,
        Positioned(

          top: -70,
          child:  cajaAzul

        )  

      ],
    );
  }

  Widget _titulos(){

    final estiloTitulo = TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold); 
    final estiloSubTitulo = TextStyle(color: Colors.white,fontSize:18); 


    return SafeArea(

      child:Container(
        padding: EdgeInsets.symmetric(vertical: 9,horizontal: 10),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text('Classify transaction', style: estiloTitulo),
            SizedBox(height: 10),
            Text('Classify this transaction into a particular category',style: estiloSubTitulo)

          ],
        ),
      ),
    );

  }

  BottomNavigationBarItem _bottombar(Icon icono,Text titulo){

    return BottomNavigationBarItem(

      icon: icono,
      title: titulo,

    );

  }

  Widget _bottomNavigationBar(BuildContext context){

    return Theme(

      data: Theme.of(context).copyWith(

        canvasColor: Color.fromRGBO(30,30,30, 1),
        primaryColor: Color.fromRGBO(180, 227, 222, 1),
        textTheme: Theme.of(context).textTheme
        .copyWith(caption: TextStyle(color: Color.fromRGBO(120, 120, 120, 1)))

      ),

      child: BottomNavigationBar(

        items: [

          _bottombar(Icon(Icons.calendar_today,size: 30),Text('')),
          _bottombar(Icon(Icons.bubble_chart,size: 30),Text('')),
          _bottombar(Icon(Icons.supervised_user_circle,size: 30),Text('')),

        ],
      ),
    );
  }

  Widget _botonesredondos(){

    return Table(

      children: [

        TableRow (
          children: [
            _crearbotonredondo(Colors.red[300],Icons.call,'Llamadas'),
            _crearbotonredondo(Colors.cyan[400],Icons.message,'Mensajes'),
          ]
        ),
        TableRow (
          children: [
            _crearbotonredondo(Colors.amber[700],Icons.alarm,'Alarmas'),
            _crearbotonredondo(Colors.lightGreen[400],Icons.photo,'Fotos'),
          ]
        ),
        TableRow (
          children: [
            _crearbotonredondo(Colors.purple[300],Icons.movie_creation,'Videos'),
            _crearbotonredondo(Colors.indigo[400],Icons.edit,'Editar'),
          ]
        ),
        TableRow (
          children: [
            _crearbotonredondo(Colors.teal,Icons.store,'Tienda'),
            _crearbotonredondo(Colors.amber,Icons.warning,'Seguridad'),
          ]
        )

      ],
    );
  }
  
  Widget _crearbotonredondo(Color color, IconData icono, String texto){

    return ClipRect(

         child: BackdropFilter(
          
         filter: ImageFilter.blur(sigmaY: 0,sigmaX: 0),

          child: Container(

          height: 180,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(50, 50, 50, .7),
            borderRadius: BorderRadius.circular(20)
          ),

          child: Column(
            

            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: <Widget>[
              
              SizedBox(height: 5),

              CircleAvatar(

                backgroundColor: color,
                radius: 35,
                child: Icon(icono,color: Colors.white,size: 30,),

              ),
              Text(texto,style: TextStyle(color: Color.fromRGBO(180, 227, 222, 1))),
            ],
          ),
        ),
      ),
    );
  }

  

}