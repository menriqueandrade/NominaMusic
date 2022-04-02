// ignore_for_file: unused_local_variable, non_constant_identifier_names, deprecated_member_use

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nomina_music_app/ui/input_decorations.dart';

void main() => runApp(ListaCoordinador());

class ListaCoordinador extends StatefulWidget {
  @override
  State<ListaCoordinador> createState() => _ListaCoordinadorState();
}

class _ListaCoordinadorState extends State<ListaCoordinador> {
  final _formKey = GlobalKey<FormState>();
  final fb = FirebaseDatabase.instance;
  TextEditingController nombre_controller = TextEditingController();
  TextEditingController apellido_controller = TextEditingController();
  TextEditingController cedula_controller = TextEditingController();
  TextEditingController salario_controller = TextEditingController();
  var r;
  var s;
  var l;
  var g;
  var k;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = fb.ref().child('Coordinador');
    return MaterialApp(
      title: 'Listado de coordinadores',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listado de coordinadores'),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'home');
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FirebaseAnimatedList(
                  query: ref,
                  shrinkWrap: true,
                  itemBuilder: (context, snapshot, animation, index) {
                    var v = snapshot.value.toString();
                    {}

                    g = v.replaceAll(
                        RegExp(
                            "{|}| Cedula: |Apellido del Musico: |Nombre del Musico: |Salario:"),
                        "");
                    g.trim();

                    l = g.split(','); // [}]
                    r = g.split(','); // [}]

                    return GestureDetector(
                      onTap: () async {
                        setState(() {
                          k = snapshot.key;
                        });
                        await _ActualizarCoordinador(context);
                      },
                      child: Column(
                        children: [
                          ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            tileColor: Colors.indigo[100],
                            trailing: IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red[900],
                              ),
                              onPressed: () {
                                ref.child(snapshot.key!).remove();
                              },
                            ),
                            title: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      l[1],
                                      // 'dd',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      l[0],

                                      // 'dd',

                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      r[3],

                                      // 'dd',

                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _ActualizarCoordinador(BuildContext context) async {
    showDialog(
      context: context,
      builder: (ctx) => SingleChildScrollView(
        child: AlertDialog(
          title: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (valor){
                    if(valor!.isEmpty){
                      return 'Por favor digite un nombre correcto';
                    }
                   
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  controller: nombre_controller,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                  ),
                 
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  //decoration: BoxDecoration(border: Border.all()),
                  child: TextFormField(
                    validator: (valor2){
                      if(valor2!.isEmpty){
                        return 'Por favor digite un apellido correcto';
                      }
                     
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    controller: apellido_controller,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      labelText: 'Apellido',
                    ),
                   
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // decoration: BoxDecoration(border: Border.all()),
                  child: TextFormField(
                    validator: (valor){
                      if(valor!.isEmpty){
                        return 'Por favor digite la cedula correcta';
                      }
                     
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: cedula_controller,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      labelText: 'Cedula',
                    ),
                   
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // decoration: BoxDecoration(border: Border.all()),
                  child: TextFormField(
                    validator: (valor){
                      if(valor!.isEmpty){
                        return 'Por favor digite un Salario correcto';
                      }
                     
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    controller: salario_controller,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      labelText: 'Salario',
                    ),
                   
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    color: Color.fromARGB(255, 0, 22, 145),
                    child: Text(
                      "Cancelar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 1),
                  MaterialButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        print('Validacion +');
                       // Scaffold.of(context).showSnackBar(
                           // SnackBar(content: Text('Processing Data')));
                      await upd();
                      Navigator.of(ctx).pop();
                      }else{
                        print('Validacion negativa ');
                      }
                      
                    },
                    color: Color.fromARGB(255, 0, 22, 145),
                    child: Text(
                      "Actualizar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  upd() async {
    DatabaseReference ref1 = FirebaseDatabase.instance.ref("Coordinador/$k");

    await ref1.update({
      "Cedula": cedula_controller.text,
      "Nombre del Musico": nombre_controller.text,
      "Apellido del Musico": apellido_controller.text,
      "Salario": salario_controller.text,
    });
    nombre_controller.clear();
    apellido_controller.clear();
  }
}
