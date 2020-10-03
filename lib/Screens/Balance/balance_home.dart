import 'package:e_app/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'components/pie_chart_screen.dart';
import 'components/harcamalar.dart';

class BalanceHomeScreen extends StatelessWidget {
  static String routeName = "/balance_home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Hakan GÜL"),
              accountEmail: Text("Test@test.com"),
            ),
            ListTile(
              title: Text("Dashboard"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("Exit"),
              leading: Icon(Icons.exit_to_app),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.pushReplacementNamed(
                  context, LoginScreen.routeName),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey.shade300,
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.black45,
              Colors.blueGrey.shade300,
            ])),
        child: Column(
          children: [
            PieChartScreen(),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(24),
                      //   topRight: Radius.circular(24),
                      // ),
                    ),
                    child: HarcamalarEkrani(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
