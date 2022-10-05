import 'package:flutter/material.dart';
import './filter_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(27, 36, 48, 1),
      child: Column(
        children: [
          Container(
            height: 120,
            color: Colors.white,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Row(
              children:[Padding(
                padding:EdgeInsets.only(left: 10),
                child: Text(
                  'Cooking Up',
                  style: TextStyle(fontSize: 33,color: Colors.black,fontFamily: 'philosopher',fontWeight: FontWeight.bold),
                ),
              ),
              Image.network("https://www.fsis.usda.gov/sites/default/files/2020-08/food-safety-tips-unique-icons_cook.png",fit: BoxFit.fitHeight,height: 70,),
              ]
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 22,
              color: Colors.white,
            ),
            title: Text("Meals",style: TextStyle(color: Colors.white,fontSize: 18),),
            onTap: (){Navigator.of(context).pushReplacementNamed('/');},
          ),
          ListTile(
            leading: Icon(
              Icons.filter_list_sharp,
              size: 22,
              color: Colors.white,
            ),
            title: Text("Filter",style: TextStyle(color: Colors.white,fontSize: 18)),
            onTap: (){Navigator.of(context).pushReplacementNamed(Filterscreen.routeName);},
          )
        ],
      ),
    );
  }
}
