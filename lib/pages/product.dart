import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

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
                    "Product",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade700),
                  )),
              Spacer(),
              Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ))
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
                alignment: Alignment.center,
                child: Image.asset("images/2.png")),
            Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Arm-cut Shirts ",
                  style: TextStyle(
                      color: Colors.purple.shade700,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.purple.shade700,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.purple.shade700,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.purple.shade700,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.grey.shade500,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.grey.shade500,
                      ),
                    ],
                  ),
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
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            child: Text(
                              "01",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            child: Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  
                ],
              ),
            ),
            
                  Container(
                    padding: EdgeInsets.only(left: 20 , top: 20),
                    child: Text(
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, necessitatibus inventore sit nobis non dolor in ducimus possimus amet dolorum quia et"),
                  ),
                 SizedBox(height: 20,)         ,
                  Container(
                    padding: EdgeInsets.only(left: 20 , top: 20),
                    child: Text(
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus, necessitatibus inventore sit nobis non dolor in ducimus possimus amet dolorum quia et"),
                  ),
                  
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Size : " , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17),),),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Text("5" , style: TextStyle(color: Colors.purple.shade700 , fontWeight: FontWeight.w700 , fontSize: 25),),),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Text("6" , style: TextStyle(color: Colors.purple.shade700 , fontWeight: FontWeight.w700 , fontSize: 25),),),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Text("7" , style: TextStyle(color: Colors.purple.shade700 , fontWeight: FontWeight.w700 , fontSize: 25),),),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Text("8" , style: TextStyle(color: Colors.purple.shade700 , fontWeight: FontWeight.w700 , fontSize: 25),),),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Text("9" , style: TextStyle(color: Colors.purple.shade700 , fontWeight: FontWeight.w700 , fontSize: 25),),),
                          
                          
                      ],
                    ),
                  ),
                  
          ],
        ),
      ),
    );
  }
}
