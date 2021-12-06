import 'package:flutter/material.dart';


class InputCustomizado extends StatelessWidget {

  final String hint;
  final bool obscure;
  final Icon icon;
  final TextEditingController controller;
  final TextInputType type;
  final bool autofocus;
  final String validador;


  InputCustomizado(
      {
        @required this.hint,
        @required this.controller,
        this.autofocus = false,
        this.obscure= false,
        this.type = TextInputType.text,
        this.icon= const Icon(Icons.person),
        @required this.validador
      }
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        controller: this.controller,
        keyboardType: this.type,
        obscureText: this.obscure,
        autofocus: this.autofocus,

        decoration: InputDecoration(
            icon: this.icon,
            border: InputBorder.none,
            hintText: this.hint,
            hintStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: 16
            ),
        ),
      ),
    );
  }
}
