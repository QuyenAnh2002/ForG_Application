import 'package:flutter/material.dart';


class CategoriesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0, // Chiều cao của danh mục sản phẩm
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              // Xử lý sự kiện khi người dùng ấn vào sản phẩm
              print('Pressed Product 1');
            },
            child: ProductItem(imageUrl: 'images/logodanhmuc/logo3l.png', name: 'Áo ba lỗ'),
          ),
          GestureDetector(
            onTap: () {
              // Xử lý sự kiện khi người dùng ấn vào sản phẩm
              print('Pressed Product 2');
            },
            child: ProductItem(imageUrl: 'images/logodanhmuc/logodt.png', name: 'Áo dài tay'),
          ),
          GestureDetector(
            onTap: () {
              // Xử lý sự kiện khi người dùng ấn vào sản phẩm
              print('Pressed Product 3');
            },
            child: ProductItem(imageUrl: 'images/logodanhmuc/logojk.png', name: 'Áo khoác'),
          ),
          GestureDetector(
            onTap: () {
              // Xử lý sự kiện khi người dùng ấn vào sản phẩm
              print('Pressed Product 4');
            },
            child: ProductItem(imageUrl: 'images/logodanhmuc/logoj.png', name: 'Quần Jean'),
          ),
          GestureDetector(
            onTap: () {
              // Xử lý sự kiện khi người dùng ấn vào sản phẩm
              print('Pressed Product 5');
            },
            child: ProductItem(imageUrl: 'images/logodanhmuc/logosa.png', name: 'Áo cộc tay'),
          ),
          GestureDetector(
            onTap: () {
              // Xử lý sự kiện khi người dùng ấn vào sản phẩm
              print('Pressed Product 6');
            },

            child: ProductItem(imageUrl: 'images/logodanhmuc/logosq.png', name: 'Quần short'),
          ),
          // Thêm các sản phẩm khác tương tự ở đây
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String name;

  ProductItem({required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            //width: 150,
           //margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imageUrl,
                width: 40,
                    height: 40,),
                //SizedBox(height: 8.0),

                Text(name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );

  }
}


