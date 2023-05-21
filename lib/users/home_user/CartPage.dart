import 'package:f0/users/home_user/widgets/CartAppBar.dart';
import 'package:f0/users/home_user/widgets/CartBottomBar.dart';
import 'package:f0/users/home_user/widgets/CartItems.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),

          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),)
            ),
            child: Column(
              children: [
                CartItems(),
                Container(
                //   decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                // ),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                       Container(
                         decoration: BoxDecoration(
                           color: Colors.black,
                           borderRadius: BorderRadius.circular(20)
                         ),
                       )
                    ],

                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottomBar(),

    );
  }
}