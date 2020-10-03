import 'package:e_app/Screens/Home/home_screen.dart';
import 'package:e_app/Screens/Welcome/welcome_screen.dart';
import 'package:e_app/routes.dart';
import 'package:flutter/material.dart';

import 'config/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: WelcomeScreen(),
      // initialRoute: WelcomeScreen.routeName,
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
