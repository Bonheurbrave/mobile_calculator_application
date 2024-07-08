import 'package:bobo/pages/product.dart';
import 'package:flutter/material.dart';

class Best extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // physics: NeverScrollableScrollPhysics(),
      childAspectRatio: 0.68,
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        for (int i = 1; i < 10; i++)
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Product())
              );
            },
            child: ListView(
              children: [
               Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.purple.shade700 , borderRadius: BorderRadius.circular(10)),
                          
                          child: Text("-17%" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w500),),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red.shade900,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset("images/$i.png" , width: 80,),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Product Tile" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17 , color: Colors.purple.shade700),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Description of the product" , ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("88"), Icon(Icons.shopping_cart_checkout)],
                    ),
                  )
                ],
              ),
              ]
            ),
          )
      ],
    );
  }
}
