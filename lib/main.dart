import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme:

        ColorScheme.light().copyWith(primary: Color(0xFF0A0E21)), //used to change colors
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white),
        ),
        //primarySwatch: Colors.red,//used to change color of app bar ,tab bar etc

      ),
      home: InputPage(),
    );
  }
}


