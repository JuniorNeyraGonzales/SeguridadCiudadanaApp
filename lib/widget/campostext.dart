import 'package:flutter/material.dart';

class CamposText extends StatelessWidget {
  
  final Icon icono;
  final String inputText;
  final String labeltext;
  final int minlength;
  final bool obscureText;
  final ValueChanged<String> onChange;
  final ValueChanged<String> validator;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool autoValidate;

  const CamposText({this.icono, this.inputText, this.obscureText, this.labeltext, this.minlength, this.onChange, this.validator, this.controller, this.focusNode, this.autoValidate});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      autovalidate: autoValidate,
      controller: controller,
      minLines: minlength,
      decoration: InputDecoration(
        suffixIcon: icono,
        hintText: inputText,
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color: Colors.black87.withOpacity(0.5)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
          ),
        contentPadding:
              EdgeInsets.only(top: 16, bottom: 16, left: 10),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
          ),
      ),
       obscureText: obscureText == null ? false : obscureText,
       onChanged: onChange,
       validator: validator,
    );
  }
}