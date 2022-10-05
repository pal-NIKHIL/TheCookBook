import 'package:flutter/material.dart';
import './maindrawer.dart';

class Filterscreen extends StatefulWidget {
  static const routeName = '/filter';
  final dynamic savefilter;
  final Map<String,bool> currentfilter;
  Filterscreen(this.currentfilter,this.savefilter);
  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  var glutenfree = false;
  var veg = false;
  var vegan = false;
  var lactosefree = false;
  initState(){
      glutenfree=widget.currentfilter['gluten']!;
      veg=widget.currentfilter['vegan']!;
      vegan=widget.currentfilter['veg']!;
      lactosefree=widget.currentfilter['lactose']!;
      super.initState();
  }
  Widget switchlisttile(
      String subtitle, String title, bool currvalue, dynamic update) {
    return SwitchListTile(
          value: currvalue,
          onChanged: update,
          title: Text(title),
          subtitle: Text(subtitle),
        );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Filters",style: TextStyle(fontSize: 28,fontFamily: 'philosopher'),),
          actions: [
            IconButton(onPressed: () {
              final selectedfilter={
                'gluten':glutenfree,
                'vegan':vegan,
                'veg':veg,
                'lactose':lactosefree
              };
              widget.savefilter(selectedfilter);
            }, icon: Icon(Icons.save))
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(padding:EdgeInsets.all(10),child: Text("Adjust your Meal selection",style: TextStyle(fontSize: 25),)),
            ),
            Expanded(
                child: ListView(
              children: [
                switchlisttile(
                    "Only Gluten free Meals", "Gluten Free", glutenfree,
                    (newvalue) {
                  setState(
                    () {
                      glutenfree = newvalue;
                    },
                  );
                }),
                switchlisttile(
                    "Only Vegan Meals", "Vegan", vegan,
                        (newvalue) {
                      setState(
                            () {
                          vegan = newvalue;
                        },
                      );
                    }),
                switchlisttile(
                    "Only Veg Meals", "Veg", veg,
                        (newvalue) {
                      setState(
                            () {
                          veg = newvalue;
                        },
                      );
                    }),
                switchlisttile(
                    "Only Lactose free Meals", "Lactose Free", lactosefree,
                        (newvalue) {
                      setState(
                            () {
                          lactosefree = newvalue;
                        },
                      );
                    }),
              ],
            ))
          ],
        ));
  }
}
