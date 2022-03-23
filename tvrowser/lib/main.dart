import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvrowser/Constants/AppColors.dart';
import 'package:tvrowser/Screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'Providers/url_display_provider.dart';

bool isDarkMode = true;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<URLDisplayProvider>(create: (_) => URLDisplayProvider()),
      ],
      child: MaterialApp(
        title: 'TVROWSER',
        theme: ThemeData(
          backgroundColor: AppColors.mainColor,
          primarySwatch: Colors.blue,
        ),
        home: MainScreen(),
      ),
    );
  }
}
