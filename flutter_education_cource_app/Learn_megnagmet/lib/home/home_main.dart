import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:learn_megnagmet/home/home_screen.dart';

import '../utils/slider_page_data_model.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  // int currentvalue = 0;
  List userDetail = Utils.getUser();

  HomeMainController controller = Get.put(HomeMainController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: _body(),
      ),
    );
  }

  _body() {

  }
}

class HomeMainController {
}
