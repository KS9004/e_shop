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
          return Single_product(
            product_name: products_list[index]['name'],
            product_picture: products_list[index]['picture'],
            product_old_price: products_list[index]['old_price'],
            product_price: products_list[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  Single_product(
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
            onTap: (){},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                  title: Text("\₹$product_price",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                  ),
                  ),
                  subtitle: Text("\₹$product_old_price",style: TextStyle(
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
