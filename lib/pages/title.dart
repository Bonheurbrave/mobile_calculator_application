import 'package:bobo/pages/cartpage.dart';
import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Icon(Icons.sort , color: Colors.purple.shade800,),
          Text("Bobo shop" , style: TextStyle(color: Colors.purple.shade800 , fontWeight: FontWeight.bold),),
          Spacer(),
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Cartpage())
              );
            },
            child: Badge(
              child: Icon(Icons.shopping_bag_outlined , size: 28,), 
            ),
          )
        ],
      ),
    );
  }
}
