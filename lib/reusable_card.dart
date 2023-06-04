import 'package:flutter/material.dart';
class reusable_container extends StatelessWidget {
  reusable_container({@required this.color,this.cardchild,this.onpress});
  final Color color;
  final Widget cardchild;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        decoration: BoxDecoration(
          
          color: color,//change with 'color' if want to custom the color of every widget
          borderRadius: BorderRadius.circular(10),
        ),

      ),
    );
  }
}
