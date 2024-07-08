import 'package:bobo/pages/best.dart';
import 'package:bobo/pages/categories.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Colors.grey.shade100,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Search ...",
                  suffixIcon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.purple.shade600,
                  )),
            ),
            Container(
                padding: EdgeInsets.only(top: 15),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.purple.shade700),
                )),
            Categories(),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Best Selling ",
                  style: TextStyle(
                    color: Colors.purple.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Best(),
            SizedBox(
              height: 30,
            ),
            
          ],
        ),
      ),
    );
  }
}
