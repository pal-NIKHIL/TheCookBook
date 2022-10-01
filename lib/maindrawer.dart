import 'package:flutter/material.dart';
import './filter_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            color: Color.fromRGBO(27, 36, 48, 1),
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up !♥!',
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 20,
            ),
            title: Text("Meals"),
            onTap: (){Navigator.of(context).pushReplacementNamed('/');},
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 20,
            ),
            title: Text("Filter"),
            onTap: (){Navigator.of(context).pushReplacementNamed(Filterscreen.routeName);},
          )
        ],
      ),
    );
  }
}
