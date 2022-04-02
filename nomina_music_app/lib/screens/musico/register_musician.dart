// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nomina_music_app/models/cargo.dart';
import 'package:nomina_music_app/ui/input_decorations.dart';



class RegisterMusician extends StatefulWidget {
  @override
  State<RegisterMusician> createState() => _RegisterMusicianState();
}

class _RegisterMusicianState extends State<RegisterMusician> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar Musico'),
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
              Card_Registrar_Musico(),
            ],
          ),
        ),
      ),
    );
  }
}

class Card_Registrar_Musico extends StatefulWidget {
  const Card_Registrar_Musico({
    Key? key,
  }) : super(key: key);

  @override
  State<Card_Registrar_Musico> createState() => _Card_Registrar_MusicoState();
}

class _Card_Registrar_MusicoState extends State<Card_Registrar_Musico> {
  late List<Cargo> cargos;
  static const int numItems = 20;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);
  @override
  void initState() {
    super.initState();
    cargos = Cargo.ObtenerCargos();
  }

  @override
  Widget build(BuildContext context) {
    var index = 0;
    var index2= 2;
    var index3= 3;
    var index4= 4;
    var index5= 5;
    var index6= 6;
    var index7= 7;
    var index8= 8;
    var index9= 9;
    var index10= 10;
    var index11= 11;
    var index12=12;
    var index13=13;
    var index14=14;
    var index15=15;
    var index16=16;

    var index18=18;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 25,
      child: SizedBox(
        width: 350,
        height: 1300,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  decoration: InputDecorations.authInputDecoration(
                      hintText: 'Nombre del Musico', labelText: 'Nombre:')),
            ),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  decoration: InputDecorations.authInputDecoration(
                      hintText: 'Apellido del Musico', labelText: 'Apellido:')),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  decoration: InputDecorations.authInputDecoration(
                      hintText: 'Cedula', labelText: 'Cedula:')),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  decoration: InputDecorations.authInputDecoration(
                      hintText: 'Salario', labelText: 'Salario:')),
            ),
            SingleChildScrollView(
              
              child: DataTable(columns: [
                DataColumn(
                  label: Text('Todos los cargos'),
                ),
              ], rows: [
                
                DataRow(
                  
                    cells: [
                      DataCell(Text("Pianista")),
                    ],
                    selected: selected[index],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index] = value!;
                      });
                    }),
                DataRow(
                    selected: selected[index2],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index2] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Acordeonero")),
                    ]),
                DataRow(
                    selected: selected[index3],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index3] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Timbalero")),
                    ]),
                DataRow(
                    selected: selected[index4],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index4] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Conguero")),
                    ]),
                DataRow(
                    selected: selected[index5],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index5] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Corista 1")),
                    ]),
                DataRow(
                    selected: selected[index6],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index6] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Corista 2")),
                    ]),
                DataRow(
                    selected: selected[index7],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index7] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Corista 3")),
                    ]),
                DataRow(
                    selected: selected[index8],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index8] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Instrumento de aire 1- Trombom")),
                    ]),
                DataRow(
                    selected: selected[index9],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index9] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Instrumento de aire 2- Trompeta")),
                    ]),
                DataRow(
                    selected: selected[index10],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index10] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Guacharaquero")),
                    ]),
                DataRow(
                    selected: selected[index11],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index11] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Cajero")),
                    ]),
                DataRow(
                    selected: selected[index12],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index12] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Guitarrista")),
                    ]),
                DataRow(
                    selected: selected[index13],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index13] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Bajista")),
                    ]),
                DataRow(
                    selected: selected[index14],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index14] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Ing de sonido")),
                    ]),
                DataRow(
                    selected: selected[index15],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index15] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Productor")),
                    ]),
                DataRow(
                    selected: selected[index16],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index16] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Aux ing de sonido")),
                    ]),
               
                DataRow(
                    selected: selected[index18],
                    onSelectChanged: (bool? value) {
                      setState(() {
                        selected[index18] = value!;
                      });
                    },
                    cells: [
                      DataCell(Text("Auxiliar de instrumentos")),
                    ]),
              ]),
            ),
            FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.save),
            ),
          ],
        ),
      ),
    );
  }
}
