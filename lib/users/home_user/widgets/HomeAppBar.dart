
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Image.asset('images/logo.png',
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: 20),
            child: Text(
              "FOR G",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
          //   badgeContent: Container(
          //     color: Colors.red,
          //     //padding: EdgeInsets.all(7),
          // ),

              badgeContent: Text("3"),

            child: InkWell(

              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
              ),
            ),
          ),


        ],
      ),
    );
  }
}