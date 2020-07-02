import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blueAccent,
        title: Text("Eshop"),

        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){}),
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
                child: Icon(Icons.person,color: Colors.white,),
              ),
            ),
            ),
//            body
            DrawerHeader_Menu(icon: Icons.home,title: "Home",),
            DrawerHeader_Menu(icon: Icons.person,title: "My Account",),
            DrawerHeader_Menu(icon: Icons.shopping_basket,title: "My Orders",),
            DrawerHeader_Menu(icon: Icons.dashboard,title: "Categories",),
            Divider(),
            DrawerHeader_Menu(icon: Icons.settings,title: "Settings",),
            DrawerHeader_Menu(icon: Icons.help,title: "About",)

          ],
        ),
      ),
    );
  }
}

class DrawerHeader_Menu extends StatelessWidget {
  const DrawerHeader_Menu({this.icon,this.title
  }) ;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: ListTile(
        title: Text(title),
        leading: Icon(icon),
      ),
    );
  }
}

