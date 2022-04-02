// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class InputDecorations {
  /*Se pone auth por que se esta trabajando en el login*/
  static InputDecoration authInputDecoration({
    /*Para reutilizar estilos en los inputs*/
    required String hintText,
     String? labelText,
     String? border,
    IconData? prefixIcon,
  }) {
    return InputDecoration(
        // ignore: prefer_const_constructors
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
        // ignore: prefer_const_constructors
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 2)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.blueGrey),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: Colors.deepPurple,
              )
            : null);
  }
}


