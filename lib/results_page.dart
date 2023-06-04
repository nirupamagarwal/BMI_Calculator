import 'package:calculate_bmi/constants.dart';
import 'package:calculate_bmi/reusable_card.dart';
import 'package:flutter/material.dart';
class Results extends StatelessWidget {
  Results({@required this.bmiresult,@required this.resulttext,@required this.interpretation});
final String bmiresult;
final String resulttext;
final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child:
          Container(
            child: Text('YOUR RESULT',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),),
          ),),
          Expanded(
            flex: 5,
            child: reusable_container(
              color: kactivecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
               Text(resulttext.toUpperCase(),style: TextStyle(
                 color: Colors.greenAccent,
                 fontSize: 22.0,
                 fontWeight: FontWeight.bold,
               ),),
                  Text(bmiresult,style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 100.0,
                  ),),
                  Text(interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 22,

                  ),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Center(
                        child: Text('RE-CALCULATE',style: TextStyle(
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
            ),
          )
        ],
      )
    );
  }
}
