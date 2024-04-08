// // ignore_for_file: prefer_const_constructors

// ignore_for_file: prefer_const_constructors

import 'package:cameraapp/displayimage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: imagedisplay(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}