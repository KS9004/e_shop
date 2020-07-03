import 'package:e_shop/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120.0,
      "price": 85.0,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100.0,
      "price": 50.0,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: products_list.length,
        itemBuilder: (BuildContext context, int index) {
          return Single_Product(
            product_name: products_list[index]['name'],
            product_picture: products_list[index]['picture'],
            product_old_price: products_list[index]['old_price'],
            product_price: products_list[index]['price'],
          );
        });
  }
}

class Single_Product extends StatelessWidget {
  Single_Product(
      {this.product_name,
      this.product_old_price,
      this.product_picture,
      this.product_price});

  final product_name;
  final product_old_price;
  final product_picture;
  final product_price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductDetails(
//                  Passing the data of Product to ProductDetails
                  productdetails_name: product_name,
                  productdetails_old_rice: product_old_price,
                  productdetails_picture: product_picture,
                  productdetails_price: product_price,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\₹$product_price",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.red,
                    ),
                  ),
                  subtitle: Text(
                    "\₹$product_old_price",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
