import 'package:flutter/material.dart';
import './dummy_dart.dart';
import './category_item.dart';

class Categoriesscreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: TextField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none),
                                  hintText: 'Search',
                                  hintStyle:
                                      TextStyle(color: Colors.grey, fontSize: 18),
                                  prefixIcon: Container(
                                    child: Icon(Icons.search),
                                  )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 180,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  children: DUMMY_CATEGORIES
                      .map((catdata) => Categoryitem(
                            id: catdata.id,
                            title: catdata.title,
                            image: catdata.img,
                          ))
                      .toList()),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "What's on your mind ?",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'philosopher',
                          fontSize: 20),
                    )),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 120,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("lib/images/plate1.png"),
                            maxRadius: 50,
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage("lib/images/lolly.png"),
                            maxRadius: 50,
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage("lib/images/plate3.png"),
                            maxRadius: 50,
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage("lib/images/plate4.png"),
                            maxRadius: 50,
                            backgroundColor: Colors.transparent,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage("lib/images/plate5.png"),
                            maxRadius: 50,
                            backgroundColor: Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}
