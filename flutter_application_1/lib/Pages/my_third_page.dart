import 'package:flutter/material.dart';

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({Key? key, required this.title}) : super(key: key);

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
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/fondo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenido principal
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Musica",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromARGB(255, 250, 251, 252),
                    ),
                  ),
                  const SizedBox(height: 20), // Espacio vertical entre el título y la información

                  // Cuadros de información
                  _buildInformationBox(
                    title: 'JUSTIN BIEBER',
                    details: 'LOVE ME LIKE DO YOU',
                    icon: Icons.mic,
                    imagePath: 'assets/images/justin.jpg',
                  ),
                  _buildInformationBox(
                    title: 'BTS',
                    details: 'FAKE LOVE',
                    icon: Icons.mic,
                    imagePath: 'assets/images/bts.jpg',
                  ),
                  _buildInformationBox(
                    title: 'JEON JUNG-KOOK',
                    details: 'SEVEN',
                    icon: Icons.mic,
                    imagePath: 'assets/images/golden.jpg',
                  ),
                  const SizedBox(height: 20), // Espacio entre la información y los botones
                  
                  // Botones
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 109, 1, 109)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/route2');
                    },
                    child: const Text('Descripcion'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 109, 1, 109)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/route4');
                    },
                    child: const Text('Reproductor'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
    );
  }

  Widget _buildInformationBox({
    required String title,
    required String details,
    required IconData icon,
    required String imagePath,
  }) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.black, size: 24),
              const SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            details,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
