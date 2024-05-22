import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/my_cero_page.dart';
import 'package:flutter_application_1/Pages/my_firt_page.dart';
import 'package:flutter_application_1/Pages/my_four_page.dart';
import 'package:flutter_application_1/Pages/my_second_page.dart';
import 'package:flutter_application_1/Pages/my_third_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCeroPage(title: 'Bienvenidos'),
      routes: <String, WidgetBuilder>{
        '/route0': (BuildContext context) => const MyCeroPage(title: 'Bienvenidos'),
        '/route1': (BuildContext context) => const MyFirstPage(title: 'Inicio De Sesion'),
        '/route2': (BuildContext context) => const MySecondPage(title: 'Descripcion'),
        '/route3': (BuildContext context) => const MyThirdPage(title: 'Musica'),
        '/route4': (BuildContext context) => const MyFourPage(title: 'Reproductor'),
      },
    );
  }
}
