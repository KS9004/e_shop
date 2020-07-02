import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
         Category(imageLocation: "images/cats/accessories.png",imageCaption: "shirt",),
          Category(imageLocation: "images/cats/dress.png",imageCaption: "dress",),
          Category(imageLocation: "images/cats/formal.png",imageCaption: "formal",),
          Category(imageLocation: "images/cats/informal.png",imageCaption: "informal",),
          Category(imageLocation: "images/cats/jeans.png",imageCaption: "jeans",),
          Category(imageLocation: "images/cats/shoe.png",imageCaption: "shoe",),
          Category(imageLocation: "images/cats/tshirt.png",imageCaption: "shirt",),
        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  Category({this.imageCaption,this.imageLocation});
  final String imageLocation;
  final String imageCaption;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title:Image.asset(imageLocation,
              height: 80.0,
              width: 100.0,),
            subtitle: Text(imageCaption,
            style: TextStyle(fontSize: 12.0),
            textAlign: TextAlign.center,),

          ),
        ),
      ),
    );
  }
}

