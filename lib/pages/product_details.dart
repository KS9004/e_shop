import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({this.productdetails_name,this.productdetails_old_rice,this.productdetails_picture,this.productdetails_price});
  final productdetails_name;
  final productdetails_old_rice;
  final productdetails_price;
  final productdetails_picture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blueAccent,
        title: Text("Eshop"),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
              color: Colors.white70,
                child: Image.asset(productdetails_picture),
            ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(productdetails_name),
                ),
              ),
            ),
          )
        ],
      ),
    );  }
}
