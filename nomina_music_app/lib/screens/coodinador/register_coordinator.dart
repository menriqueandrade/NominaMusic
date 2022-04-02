// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, camel_case_types, prefer_const_constructors_in_immutables, must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:nomina_music_app/screens/home/home_screen.dart';
import 'package:nomina_music_app/ui/input_decorations.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:math';
class RegisterCoordinator extends StatefulWidget {
  @override
  State<RegisterCoordinator> createState() => _RegisterCoordinatorState();
}

class _RegisterCoordinatorState extends State<RegisterCoordinator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text('Registrar Coordinador'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'home');
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card_Registrar_Coordinador(),
            ],
          ),
        ),
      ),
    );
  }
}

class Card_Registrar_Coordinador extends StatefulWidget {
  @override
  State<Card_Registrar_Coordinador> createState() =>
      _Card_Registrar_CoordinadorState();
}

class _Card_Registrar_CoordinadorState
    extends State<Card_Registrar_Coordinador> {
  TextEditingController nombre_controller = TextEditingController();
  TextEditingController apellido_controller = TextEditingController();
  TextEditingController cedula_controller = TextEditingController();
  TextEditingController salario_controller = TextEditingController();

  /*llamamos la libreria de la base de datos */
  final fb = FirebaseDatabase.instance;
  @override
  Widget build(BuildContext context) {

    //Valores random para el ID
    var rng = Random();
    var id = rng.nextInt(10000);
    //

    final ref = fb.ref().child('Coordinador/$id');
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 25,
      child: SizedBox(
        width: 350,
        height: 450,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                controller: cedula_controller,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Cedula', labelText: 'Cedula:')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                controller: nombre_controller,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Nombre del Musico', labelText: 'Nombre:')),
          ),
          SizedBox(height: 1),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                controller: apellido_controller,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Apellido del Musico', labelText: 'Apellido:')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                controller: salario_controller,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Salario', labelText: 'Salario:')),
          ),
          SizedBox(height: 70),
          FloatingActionButton(
            onPressed: () {
              ref
              .set({
                    "Cedula":cedula_controller.text,
                    "Nombre del Musico":nombre_controller.text,
                    "Apellido del Musico":apellido_controller.text,
                    "Salario":double.parse(salario_controller.text).toStringAsFixed(3),
                  }).asStream();

              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => HomeScreen()));
            },
            child: const Icon(Icons.save),
          ),
        ]        ),
      ),
    );
  }
}
