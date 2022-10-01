import 'package:flutter/material.dart';
import './dummy_dart.dart';
import './category_item.dart';

class Categoriesscreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Food Menu",style:TextStyle(fontSize: 30,color: Theme.of(context).colorScheme.secondary),),
            Text("choose Your favourite Cuisine Have a Great Day"),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal, 
                padding: EdgeInsets.all(10),
                children:  DUMMY_CATEGORIES
                        .map((catdata) => Categoryitem(id: catdata.id,
                            title: catdata.title,image: catdata.img, ))
                        .toList()),
            ),
          ],
        ),
    );
  }
}
