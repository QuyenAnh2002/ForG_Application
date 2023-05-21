import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ItemWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GridView.count(childAspectRatio: 0.68,
    physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    shrinkWrap: true,
    children: [
      for (int i = 1; i < 8; i++)

      Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),


        ),


        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "-50%",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
              ],
            ),
            InkWell(
              onTap: (

                  ){print("sp$i");
                Navigator.pushNamed(context, "productPage");},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset("images/product/3l/bl$i.jpg",
                height: 100,
                width: 100,),
              ),
            ),
            Container(padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Title",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Write something about product",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),),

            ),
            Padding(padding: EdgeInsets.only(bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("price\$",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),

              ],
            ),),
            
          ],
        ),
      )
    ],);
  }
}