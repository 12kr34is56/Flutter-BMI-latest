import 'package:flutter/material.dart';
import 'constant.dart';

class icon extends StatelessWidget {
  final IconData icons;
  final String label;
  icon(this.icons, this.label);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icons,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(height: 15.0,),
        Text(label,style: kText,),
      ],
    );
  }
}
