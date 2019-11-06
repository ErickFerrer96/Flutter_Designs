import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo =
      TextStyle(fontSize: 18.0, color: Colors.blueGrey[200]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(

        children: <Widget>[
        _crearImagen(),
        _crearTitulo(),
        _crearAcciones(),
        _crearTexto(),  
        _crearTexto(),  
        _crearTexto(),  
        _crearTexto(),  
        _crearTexto(),  

      ],

      ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://content.thriveglobal.com/wp-content/uploads/2019/09/5-Awesome-Things-to-do-in-Japan-at-Night.jpg?w=1550'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Japon night',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Osaka city in Kansai.',
                    style: estiloSubtitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.deepPurpleAccent[100],
              size: 30,
            ),
            Text('41', style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     
      children: <Widget>[

        _accion(Icons.call,'CALL'),
        _accion(Icons.near_me,'ROUTE'),
        _accion(Icons.share,'Share')

      ],

    );
  }

  Widget _accion(IconData icon,String texto) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(icon,color:Colors.pink[400], size:40), 
            Text(texto,style: TextStyle(fontSize: 15.0, color:Colors.blue[700]),)
          ],
        )
      ],
    );
  }

  Widget _crearTexto(){

    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
        child: Text(

          'Nisi amet ea commodo dolor in enim et et id cupidatat ea anim. Sint enim elit proident sunt magna do quis aliquip ullamco do reprehenderit. Incididunt ipsum cillum amet dolor culpa enim.', 
          textAlign: TextAlign.justify,

        ),
      ),
    );
  }

}