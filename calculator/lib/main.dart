import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: calculatorapp(),
  ));
}

class calculatorapp extends StatefulWidget {
  const calculatorapp({super.key});

  @override
  State<calculatorapp> createState() => _calculatorappState();
}

class _calculatorappState extends State<calculatorapp> {

//Variables //
double firstnum = 0.0;
double secondnum=0.0;
var input = '';
var output = '';

var operator='';

onButtonClick(value) {
  
  //Value = AC
  if(value=="AC"){
    input ='';
    output='';
  }

  else if(value == "<--"){
    input = input.substring(0,input.length - 1);
  }

  else if(value == "=") {
    var userinput=input;
    userinput = input.replaceAll("x", "*");
    Parser p =Parser();
    Expression expression = p.parse(userinput);
    ContextModel cm = ContextModel();
    var finalValue = expression.evaluate(EvaluationType.REAL, cm);
    output=finalValue.toString();
    
  }

  else{
    input = input + value;
  }

setState(() {
});

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              
              width: double.infinity,
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(input,style: TextStyle(fontSize: 60,color: Colors.white),),
                  SizedBox(height: 18,),
                  Text(output,style: TextStyle(fontSize: 36,color: Colors.white.withOpacity(0.7)),),
                  SizedBox(height: 18,),
                ],
              ),
            )
            ),
          //Buttons Area //

          Row(
            children: [
              button(text: "AC",textcolor: orangecolor,buttonbgcolor: operatorcolor),
               button(text: "<--",buttonbgcolor: operatorcolor),
                button(text: "+/-",buttonbgcolor: operatorcolor),
                 button(text: "/",buttonbgcolor: operatorcolor),
            ],
          ),


          Row(
            children: [
              button(text: "7"),
               button(text: "8"),
                button(text: "9"),
                 button(text: "x",buttonbgcolor: operatorcolor),
            ],
          ),

             Row(
            children: [
              button(text: "4"),
               button(text: "5"),
                button(text: "6"),
                 button(text: "-",buttonbgcolor: operatorcolor),
            ],
          ),

             Row(
            children: [
              button(text: "1"),
               button(text: "2"),
                button(text: "3"),
                 button(text: "+",buttonbgcolor: operatorcolor),
            ],
          ),

            Row(
            children: [
              button(text: "%"),
               button(text: "0"),
                button(text: "."),
                 button(text: "=",buttonbgcolor: orangecolor),
            ],
          )
        ],
      ),
    );
  }

  Widget button(
    {
      text,textcolor = Colors.white, buttonbgcolor = buttoncolor
  }) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: buttonbgcolor,
            padding: EdgeInsets.all(22),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        onPressed: () => onButtonClick(text),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18, color: textcolor, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}