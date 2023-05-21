import 'package:f0/users/home_user/widgets/CategoriesWidget.dart';
import 'package:f0/users/home_user/widgets/ItemWidget.dart';
import 'package:f0/users/login/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:f0/users/home_user/widgets/HomeAppBar.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:f0/users/login/signup_screen.dart';
class HomePage extends StatelessWidget{
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            //height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),
            child: Column(children: [
              Container(margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),

                      height: 50,
                      width: 250,

                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      size: 27,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
             Container(
               alignment: Alignment.centerLeft,
               margin: EdgeInsets.symmetric(
                 vertical: 20,
                 horizontal: 20,
               ),
               child: Text(
                 "Danh mục sản phẩm",
                 style: TextStyle(
                   fontSize: 23,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                 ),
               ),
             ),

                //Categories
              CategoriesWidget(),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal:10),
                child: Text(
                  "Sản phẩm bán chạy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.black,
                  ),

                ),
              ),
              ItemWidget(),
            ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: GNav(
         gap: 8,
          tabBackgroundColor: Colors.white24,
          tabs:  [
            GButton(icon: Icons.home,
            text: "Trang chủ",),
            GButton(icon: Icons.shopping_cart,
            text: "Giỏ hàng",),
            GButton(icon: Icons.logout,
            text: "Đăng xuất"),


          ]) ,

    );
  }
}