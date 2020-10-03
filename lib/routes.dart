import 'package:e_app/Screens/Home/home_screen.dart';
import 'package:e_app/Screens/Product/product_screen.dart';
import 'package:e_app/Screens/Signup/signup_screen.dart';
import 'package:e_app/Screens/Welcome/welcome_screen.dart';
import 'Screens/Balance/balance_home.dart';
import 'Screens/Login/login_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  //
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  BalanceHomeScreen.routeName: (context) => BalanceHomeScreen(),
  ProductScreen.routeName: (context) => ProductScreen(),
};
