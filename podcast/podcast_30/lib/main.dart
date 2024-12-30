import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_podcast/routes/app_pages.dart';

void main(){
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: AppPages.routes,
    );
  }
}
