import "package:flutter/material.dart";

class Categories extends StatelessWidget {
  dynamic categories = [
    'sandal',
    'shirts',
    'headset',
    'gaming',
    'jerseys',
    'shoes',
    'pants',
    'jackets'
  ];
  @override
  build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            for (int i = 1; i < 9; i++)
              for (int l = 0; l < categories.length; l++)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.white,
                  width: 100,
                  height: 60,
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        "images/2.png",
                        width: 25,
                      ),
                      Text(
                        
                        categories[l],
                        style: TextStyle(color: Colors.purple.shade700),
                      )
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}
