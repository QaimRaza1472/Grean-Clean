import 'dart:async';
import 'package:clean_app/Views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Background/background.dart';
import 'package:get/get.dart';

import 'Theme/colors.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Grean & Cleen",
      color: kPrimaryColor,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        applyElevationOverlayColor: true,
        primarySwatch: Colors.grey,
      ),
      routes: {
       // 'sign_up': (context) => SignUp(),

        //'home_screen':(context)=>HomeScreen(),

        'home_screen':(context)=>MyHomePage(),

        'background': (context) => BackgroundWidget(
          showBackgroundImage: false,
          showTopOval: false,
          showBackgroundInDetailScreen: true,
          mainButton: null,
        ),
      },
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), finished);
  }

  void finished() {
    Navigator.pushNamed(context, 'home_screen');
  }

  @override
  Widget build(BuildContext context) {
    var height1 = MediaQuery.of(context).size.height;
    return const Scaffold(
      backgroundColor: kWhite,
      body: Align(
        alignment: Alignment.center,
        child: Text('Cleaner App',
        style: TextStyle(
          color: kPrimaryColor,
          fontSize: 23,
          fontWeight:FontWeight.bold,
        ),

        ),
      )
    );
  }
}
