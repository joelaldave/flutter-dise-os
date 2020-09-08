import 'package:disenos/src/pages/botones_page.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final stiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final stiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _acciones(context),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://cdn.pixabay.com/photo/2019/12/20/23/07/landscape-4709500_960_720.jpg'),
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
                    'Lago con la luna',
                    style: stiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Una noche a las 6 rojo oscuro ',
                    style: stiloSubtitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _acciones(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion(Icons.call, 'CALL', context),
        _crearAccion(Icons.near_me, 'ROUTER', context),
        _crearAccion(Icons.share, 'SHARE', context),
      ],
    );
  }

  Widget _crearAccion(IconData icon, String texto, BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BotonesPage()),
        );
      },
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blue,
            size: 40.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Text(
          'Proident est do laborum ullamco pariatur quis dolor deserunt aliquip ex. Excepteur ad officia veniam ea sint esse deserunt consequat incididunt commodo qui. Labore labore consectetur incididunt nisi cillum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
