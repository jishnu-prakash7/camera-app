// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_import, non_constant_identifier_names

import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imagedisplay extends StatefulWidget {
  const imagedisplay({super.key});

  @override
  State<imagedisplay> createState() => _imagedisplayState();
}

class _imagedisplayState extends State<imagedisplay> {
  final List<XFile> images = [];

  void PickImage() async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        images.add(image);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Camera'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image.file(File(images[index].path));
        },
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       floatingActionButton: FloatingActionButton(
        onPressed: PickImage,
        tooltip: 'Take a picture',
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
