import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tvrowser/Constants/AppColors.dart';
import 'package:tvrowser/Providers/url_display_provider.dart';
import 'package:tvrowser/Widgets/MainWidgets/web_view_window.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    Provider.of<URLDisplayProvider>(context,listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: WebViewWindow(
        index: 0,
      )),
      backgroundColor: AppColors.mainColor,
    );
  }
}
