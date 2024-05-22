import 'package:flutter/material.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 152, 5, 130),
      ),
      body: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/fondo.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenido de la pantalla
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Imagen de encabezado
                  Image.asset(
                    'assets/images/descripcion.jpg',
                    width: 300,
                    height: 300,
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    "BIENVENIDOS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromARGB(255, 154, 7, 129),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 20)),
                  const Text(
                    "Descubre nuestra aplicación de música, donde te damos la bienvenida a un mundo de sonidos increíbles. Explora una variedad de artistas y géneros musicales para una experiencia inigualable. Desde éxitos populares hasta joyas ocultas, nuestra plataforma te ofrece un viaje auditivo inimaginable.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Permanent Marker',
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 144, 1, 127)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/route3');
                    },
                    child: const Text('Musica'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.green[100],
    );
  }
}
