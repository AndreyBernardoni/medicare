// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicare/services/notification_services.dart';
import 'package:medicare/services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;
  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text(
            "Theme Data",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
          notifyHelper.displayNotification(
            title: "You change your theme",
            body: Get.isDarkMode
                ? "Activated Dark Theme!"
                : "Activated Light Theme!",
          );
        },
        child: Icon(
          Icons.nightlight_round,
          size: 20,
        ),
      ),
      actions: [
        Icon(
          Icons.person,
          size: 20,
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
