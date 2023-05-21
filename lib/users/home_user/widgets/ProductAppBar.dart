import 'package:f0/users/home_user/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProductAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
                Get.to(HomePage());
            },
            child: Icon(Icons.arrow_back,
            size: 30,
            color: Colors.black),

    ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text("Chi tiết sản phẩm",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.black,
          ),
          ),
          ),
          Spacer(),
          Icon(Icons.favorite,size: 30,color: Colors.red,),
        ],
      ),
    );
  }
}