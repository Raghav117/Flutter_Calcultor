import 'package:flutter/material.dart';
import 'home_page.dart';

void main()=>runApp(new MaterialApp(
  title: 'Calculator',
  theme: new ThemeData(
    primarySwatch: Colors.red

  ),
  home: new Scaffold(
    appBar: new AppBar(
      title: new Text("Calculator",textScaleFactor: 1.2,),
      centerTitle: true,
    ),
    body: new HomePage(),
  ),
));