import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

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
                  // Imagen arriba del título
                  Image.asset(
                    'assets/images/logo.png',
                    width: 200, // Ajusta el tamaño según sea necesario
                    height: 200, // Ajusta el tamaño según sea necesario
                  ),
                  const SizedBox(height: 20), // Espacio entre la imagen y el título
                  const Text(
                    "Ingrese Su Cuenta",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromARGB(255, 154, 7, 129),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 20)),
                  const Text("Complete el formulario para inscribirse"),
                  const Padding(padding: EdgeInsets.only(bottom: 20)),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'Nombre',
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.black), // Color del texto de la etiqueta
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black), // Color del borde del cuadro de texto
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese su nombre';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Correo electrónico',
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.black), // Color del texto de la etiqueta
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black), // Color del borde del cuadro de texto
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese su correo electrónico';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Contraseña',
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.black), // Color del texto de la etiqueta
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black), // Color del borde del cuadro de texto
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese su contraseña';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 144, 1, 127)),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          onPressed: () {
                            if (_formKey.currentState?.validate() == true) {
                              Navigator.pushNamed(context, '/route2');
                            }
                          },
                          child: const Text('Ingresar'),
                        ),
                      ],
                    ),
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
