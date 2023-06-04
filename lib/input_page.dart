import 'package:calculate_bmi/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';
import 'calculation.dart';
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectgender;
  int height=180;
  int weight=80;
//   Color malecard=inactivecolor;
//   Color femalecard=inactivecolor;
//   void updatecolor(Gender gender){
//     if(gender==Gender.male)
//   {
//     if(malecard==inactivecolor)
//       {malecard=cardcolor;
//         femalecard=inactivecolor;}
//     else
//       malecard=inactivecolor;
//   }
//     else
//     {
//       if(femalecard==inactivecolor)
//         {femalecard=cardcolor;
//          malecard=inactivecolor;}
//           else
//         femalecard=inactivecolor;
//     }
//
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
     children: [
       Expanded(
         child: Row(
           children: [
             Expanded(//child:GestureDetector(
               //onTap: (){
                 //setState(() {
                   //selectgender=Gender.male;
                // });
               //},
               child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: reusable_container(
                   onpress: (){
                     setState(() {
                       selectgender=Gender.male;
                     });
                   },
                   color: selectgender==Gender.male?kactivecardcolor:kinactiveccardolor,
                 cardchild: gender_icon(icon: FontAwesomeIcons.mars,gender: 'MALE',),
                 ),
               ),
             //),
             ),
             Expanded(child:Padding(
               padding: const EdgeInsets.all(15.0),
               child: reusable_container(
                 onpress: (){
                   setState(() {
                     selectgender=Gender.female;
                   });
                 },
                 color: selectgender==Gender.female?kactivecardcolor:kinactiveccardolor,//femalecard,
               cardchild: gender_icon(icon: FontAwesomeIcons.venus,gender: 'FEMALE',),),
             ),
             ),
           ],
         ),
       ),
      Expanded(child: Padding(
         padding: const EdgeInsets.all(15.0),
    child: reusable_container(color: Color(0xFF1D1E33),
    cardchild: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Text('HEIGHT',style: klabeltextsize,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(height.toString(),style: knumbertextstyle),
            Text('cm',style: klabeltextsize,)
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
           thumbColor: Color(0xFFEB1555),
            activeTrackColor: Colors.white,
            overlayColor: Color(0x30EB1555)
    ),
          child: Slider(value: height.toDouble(),
              min: 100,
              max: 250,
             // activeColor: Colors.white,
              //activeColor: Color(0xFFEB1555),
              inactiveColor: Color(0xFF8D8E98),
              onChanged: (double newvalue){
             setState(() {
               height=newvalue.round();
             });
              },),
        )
      ],
    ),),
    ),
    ),
       Expanded(child: Padding(
         padding: const EdgeInsets.all(15.0),
         child: reusable_container(color: Color(0xFF1D1E33),
           cardchild: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('WEIGHT',style: klabeltextsize,),
               Row(mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                 textBaseline: TextBaseline.alphabetic,
                 children: [
                   Text(weight.toString(),style: knumbertextstyle),
                   Text('kg',style: klabeltextsize,)
                 ],
               ),
               SliderTheme(
                 data: SliderTheme.of(context).copyWith(
                     thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                     overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                     thumbColor: Color(0xFFEB1555),
                     activeTrackColor: Colors.white,
                     overlayColor: Color(0x30EB1555)
                 ),
                 child: Slider(value: weight.toDouble(),
                   min: 40,
                   max: 200,
                   // activeColor: Colors.white,
                   //activeColor: Color(0xFFEB1555),
                   inactiveColor: Color(0xFF8D8E98),
                   onChanged: (double newvalue){
                     setState(() {
                       weight=newvalue.round();
                     });
                   },),
               )
             ],
           ),),
       ),
       ),

       GestureDetector(
         onTap: (){
           BMI_Calculator calc=BMI_Calculator(height: height,weight: weight);
           Navigator.push(context, MaterialPageRoute(builder: (context){
             return Results(
               bmiresult: calc.calculateBMI(),
               resulttext: calc.getResults(),
               interpretation: calc.getInterpret(),
             );
           }));
         },
         child: Container(
           child: Center(
             child: Text('CALCULATE',style: TextStyle(
               fontSize: 25.0,
               fontWeight:FontWeight.bold,
             ),
             ),
           ),
           color: kbottomheightcontainercolor,
           margin: EdgeInsets.only(top: 10),
           padding: EdgeInsets.only(bottom: 20),
           height: kbottomcontainerhieght,
           width: double.infinity,
         ),
       )
     ],
      ),

      // floatingActionButton: Theme(
      // data: ThemeData(colorScheme: ColorScheme.dark(secondary: Colors.blue),
      //     ),
      //   child: FloatingActionButton(
      //   child: Icon(Icons.add),
      //),
      // ),
    );
  }
}


