import 'package:f0/users/home_user/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(onTap: ()
            {
                Get.to(HomePage());
            },
            child: Icon(Icons.arrow_back,
            size: 30,
            color: Colors.black,),

          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text("Giỏ hàng",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.black,

          ),
          ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            size: 30,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}