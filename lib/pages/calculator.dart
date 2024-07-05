import 'dart:ffi';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Calculator();
  }
}

class _Calculator extends State<Calculator> {
  
  String name = "0";
  Widget calcbtn(String txt, Color color, Color bg) {
    return TextButton(
      onPressed: (){
        setState(() {
          name += txt;
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration:
            BoxDecoration(color: bg, borderRadius: BorderRadius.circular(20)),
        child: Text(
          textAlign: TextAlign.center,
          txt,
          style:
              TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 38),
        ),
      ),
    );
  }
  
  @override
  build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          textAlign: TextAlign.right,
          name,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calcbtn("Ac", Colors.black, Colors.grey),
            calcbtn("+/-", Colors.black, Colors.grey),
            calcbtn("%", Colors.black, Colors.grey),
            calcbtn("/", Colors.white, Colors.orange),
          ],
        ),
        SizedBox(
          height: 34,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calcbtn("7", Colors.black, Colors.grey.shade700),
            calcbtn("8", Colors.black, Colors.grey.shade700),
            calcbtn("9", Colors.black, Colors.grey.shade700),
            calcbtn("x", Colors.white, Colors.orange),
          ],
        ),
        SizedBox(
          height: 34,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calcbtn("4", Colors.black, Colors.grey.shade700),
            calcbtn("5", Colors.black, Colors.grey.shade700),
            calcbtn("6", Colors.black, Colors.grey.shade700),
            calcbtn("-", Colors.white, Colors.orange),
          ],
        ),
        SizedBox(
          height: 34,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calcbtn("1", Colors.black, Colors.grey.shade700),
            calcbtn("2", Colors.black, Colors.grey.shade700),
            calcbtn("3", Colors.black, Colors.grey.shade700),
            calcbtn("+", Colors.white, Colors.orange),
          ],
        ),
        SizedBox(
          height: 34,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calcbtn("0", Colors.black, Colors.grey.shade700,),
            calcbtn("(", Colors.black, Colors.grey.shade700),
            calcbtn(")", Colors.black, Colors.grey.shade700),
            calcbtn("=", Colors.black, Colors.grey.shade700),    
          ],
        ),
        SizedBox(height: 60,)
      ],
    ));
  }
}
