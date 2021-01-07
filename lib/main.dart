import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neo_app/views/AddStory.dart';
import 'package:neo_app/views/Newsfeed.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Newsfeed(),
  ));
}
