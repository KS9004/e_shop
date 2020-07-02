import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_shop/components/horizontal_listview.dart';
import 'package:e_shop/components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpeg')
        ],
        autoplay: true,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
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
      drawer: Drawer(
        child: ListView(
          children: [
//            header
            UserAccountsDrawerHeader(
              accountName: Text("Saurabh"),
              accountEmail: Text("Saurabhsingh@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
//            body of header
            DrawerHeader_Menu(
              icon: Icons.home,
              title: "Home",
            ),
            DrawerHeader_Menu(
              icon: Icons.person,
              title: "My Account",
            ),
            DrawerHeader_Menu(
              icon: Icons.shopping_basket,
              title: "My Orders",
            ),
            DrawerHeader_Menu(
              icon: Icons.dashboard,
              title: "Categories",
            ),
            Divider(),
            DrawerHeader_Menu(
              icon: Icons.settings,
              title: "Settings",
            ),
            DrawerHeader_Menu(
              icon: Icons.help,
              title: "About",
            )
          ],
        ),
      ),
      body: ListView(
        children: [
//          Carousel Images
          image_carousel,
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
//          Horizontal ListView for Categories
          HorizontalList(),

          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Recent products",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
//          GridView for recents products
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}

class DrawerHeader_Menu extends StatelessWidget {
  const DrawerHeader_Menu({this.icon, this.title});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Text(title),
        leading: Icon(icon),
      ),
    );
  }
}
