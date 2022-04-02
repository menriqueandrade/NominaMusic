import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:nomina_music_app/screens/coodinador/editar_coordinador.dart';
import 'package:nomina_music_app/screens/home/home_screen.dart';
import 'package:nomina_music_app/screens/coodinador/lista_coordinador.dart';
import 'package:nomina_music_app/screens/coodinador/register_coordinator.dart';
import 'package:nomina_music_app/screens/musico/register_musician.dart';
import 'package:nomina_music_app/ui/input_decorations.dart';
void main() async {
  //print('-- main');

  WidgetsFlutterBinding.ensureInitialized();
 // print('-- WidgetsFlutterBinding.ensureInitialized');

  await Firebase.initializeApp();
 // print('-- main: Firebase.initializeApp');

  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner:  false,
    title: 'NominaMusic',
    initialRoute: 'home',
    routes: {
      'home':( _ ) => HomeScreen(),
      'register_musician':( _ ) => RegisterMusician(),
      'register_coordinator':( _ ) => RegisterCoordinator(),
      'lista_coordinador': ( _ ) => ListaCoordinador(),
   
    },
    );
  }
}