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
        title: Text('Pagina principal', style:TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black87)),
        
      ),
    
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.blue,
                    child: Image.asset('assets/img_acordeon.png')),
                  Column(
                    children: [
                      SizedBox(width: 100,
                     ),
                      Text('MUSIC APP',
                      style:TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway')),
                    ],
                  ),
                ],
              )
            ]),
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
        child: Container(
          //Para poner fondo de pantallas en la app no se te olvide poner un container arriba
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://i.pinimg.com/originals/a9/d8/85/a9d8852f106344921246e89eda560fd3.png",),fit:  BoxFit.fill),
              
          ),
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.all(10),
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
                               style:TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway')
                             
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
                    margin: EdgeInsets.all(10),
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
                            child: Text(
                              "Listado de Musicos",
                              style:TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
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
                            child: Text(
                              "........",
                              style:TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway')
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
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
                            child: Text(
                              "........",
                              style:TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway')
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
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
                            child: Text(
                              "........",
                              style:TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway')
                            ),
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
      ),
    );
  }
}
