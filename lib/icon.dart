import 'package:flutter/material.dart';

import 'constants.dart';
class gender_icon extends StatelessWidget {
  gender_icon({this.icon,this.gender});
  final String gender;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(gender,style:klabeltextsize, ),
      ],
    );
  }
}
