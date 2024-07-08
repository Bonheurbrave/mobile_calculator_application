import 'package:flutter/material.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.purple.shade700,
                  )),
              Container(
                  padding: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Text(
                    "Cart",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade700),
                  )),
              Spacer(),
              Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.purple.shade700,
                  ))
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                for(int i = 1 ; i<10 ; i++)
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/$i.png",
                        width: 70,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text("Product title" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 14 , color: Colors.purple.shade700),),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Text("\$ 200" , style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                      Column(
            
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    )),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "01",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    )),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
