import 'package:flutter/material.dart';

class MyCeroPage extends StatelessWidget {
  const MyCeroPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
        GlobalKey<FormState>(); // Agregamos la llave del formulario

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 152, 5, 130),
      ),
      body: Container(
        width: double.infinity, // Ancho igual al ancho de la pantalla
        height: double.infinity, // Alto igual al alto de la pantalla
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/fondo.jpg'), // Ruta de la imagen de fondo
            fit: BoxFit.cover, // Cubrir toda la pantalla
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 4),
              blurRadius: 4,
            )
          ],
          color: Color.fromRGBO(87, 37, 125, 0.5),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 36,
              left: 38,
              child: Container(
                width: 300,
                height: 300,
                child: Center(
                  // Centra el contenido del contenedor
                  child: Container(
                    width: 300, // Ancho del logo
                    height: 300, // Alto del logo
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 438,
              left: 92,
              child: Text(
                'BIENVENIDOS',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(252, 251, 251, 1),
                  fontFamily: 'Otomanopee One',
                  fontSize: 34,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 506, // Ajusta la posición superior según sea necesario
              left: 120, // Ajusta la posición izquierda según sea necesario
              child: Center(
                // Centra el botón horizontalmente
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 144, 1, 127),
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context,
                        '/route1'); // Asegúrate de usar la misma ruta definida en main.dart
                  },
                  child: const Text('Inicio De Sesion'),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green[100],
    );
  }
}
