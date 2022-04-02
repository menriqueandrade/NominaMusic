// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nomina_music_app/screens/coodinador/lista_coordinador.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    void _openDrawer() {
      _scaffoldKey.currentState!.openDrawer();
    }

    void _closeDrawer() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Pagina principal'),
      ),
      /*
     body: Center(
        child: ElevatedButton(
          onPressed: _openDrawer,
          child: const Text('Open Drawer'),
        ),
      ),
      */
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('NominaMusic'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Pagina principal'),
              leading: Icon(Icons.home),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Registrar Coordinador'),
              leading: Icon(Icons.person_add),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'register_coordinator');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Registrar Musico'),
              leading: Icon(Icons.person_add),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'register_musician');
              },
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Salir'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.all(20),
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 320,
                          height: 200,
                          child: Image.asset(
                            'assets/img_coordinador.png',
                            fit: BoxFit.fill,
                            // 'Listado de Coordinadores',
                            // textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Listado de Coordinadores",
                            style: TextStyle(fontFamily: 'Raleway'),
                          ),
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ListaCoordinador()));
                    },
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 320,
                          height: 200,
                          child: Image.asset(
                            'assets/img_musico.png',
                            fit: BoxFit.fill,
                            // 'Listado de Coordinadores',
                            // textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Listado de Musicos", style: TextStyle(fontFamily: 'Raleway'),),
                            )
                      ],
                    ),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                  ),
                ),
                 Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 320,
                          height: 200,
                          child: Image.asset(
                            'assets/esperando.png',
                            fit: BoxFit.fill,
                            // 'Listado de Coordinadores',
                            // textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("........", style: TextStyle(fontFamily: 'Raleway'),),
                            )
                      ],
                    ),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 320,
                          height: 200,
                          child: Image.asset(
                            'assets/esperando.png',
                            fit: BoxFit.fill,
                            // 'Listado de Coordinadores',
                            // textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("........", style: TextStyle(fontFamily: 'Raleway'),),
                            )
                      ],
                    ),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 320,
                          height: 200,
                          child: Image.asset(
                            'assets/esperando.png',
                            fit: BoxFit.fill,
                            // 'Listado de Coordinadores',
                            // textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("........", style: TextStyle(fontFamily: 'Raleway'),),
                            )
                      ],
                    ),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
