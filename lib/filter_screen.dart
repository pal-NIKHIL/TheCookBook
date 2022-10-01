import 'package:flutter/material.dart';
import './maindrawer.dart';

class Filterscreen extends StatelessWidget{
  static const routeName='/filter';
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: Center(child: Text("helo"),),
    );
  }
}