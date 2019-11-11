import 'package:flutter/material.dart';

class ApptButtom extends StatelessWidget {
  final MaterialAccentColor color;
  final String name;
  final VoidCallback onPressed; 
  final Gradient gradient;

  const ApptButtom ({this.color, this.name, this.onPressed, this.gradient});

  @override
  Widget build(BuildContext context) {
   return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal:10.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        elevation: 5.0,
        child: SizedBox(
          height: 38.0,
          child: FlatButton(
            child: Text(name, 
                   style: TextStyle(
                     fontSize: 20.0,
                     fontWeight: FontWeight.w700,
                   )),
            onPressed: onPressed,
          ),
        ),
      ),
    ); 
  }
}