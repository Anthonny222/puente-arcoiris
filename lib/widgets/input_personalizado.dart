import 'package:flutter/material.dart';

class InputPersonalizado extends StatelessWidget {

  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final String? labelText;
  final String? helperText;

  const InputPersonalizado({
    Key? key, this.keyboardType, this.obscureText = false, this.hintText, this.labelText, this.helperText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      keyboardType: keyboardType,
      obscureText: obscureText  ,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText  
      ),
    );
  }
}