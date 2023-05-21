import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:f0/users/home_user/widgets/ProductAppBar.dart';
import 'package:f0/users/home_user/widgets/ProductBottomBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget{
  List<String> Szs = ['S', 'M','L', 'XL', 'XXL'];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ProductAppBar(),
          Padding(padding: EdgeInsets.all(16),
          child: Image.asset("images/product/jacket/k1.jpg", height: 300,),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50, bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Text("Title",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ],
                  ),

                  ),
                  Padding(padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Text("\$200",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0,3),
                                  ),
                                ]
                            ),
                            child: Icon(CupertinoIcons.minus,
                              size: 18,),

                          ),
                          Container(margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("01", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),),),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0,3),
                                  ),
                                ]
                            ),
                            child: Icon(CupertinoIcons.plus,
                              size: 18,),

                          ),
                        ],
                      )

                    ],
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 12,),
                  child: Text("Product detail", style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [

                      Text("Size",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          for (int i = 0; i < Szs.length; i++)
                          Container(
                            height: 30,
                            width: 40,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8
                                ),
                              ]
                            ),
                            child: Text(Szs[i], style: TextStyle(
                              fontSize: 18,color: Colors.black,

                            ),),

                          )
                        ],
                      ),
                    ],
                  ),
                  ),
                ],
              ),),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ProductBottomBar(),
    );
  }
}