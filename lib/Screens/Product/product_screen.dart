import 'package:e_app/Screens/Product/components/baby.dart';
import 'package:e_app/Screens/Product/components/children.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/man.dart';
import 'components/women.dart';

class ProductScreen extends StatelessWidget {
  static String routeName = "/product";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: new IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: SvgPicture.asset("assets/icons/search.svg",
                  color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
                icon: SvgPicture.asset("assets/icons/cart.svg",
                    color: Colors.black),
                onPressed: () {}),
            SizedBox(width: 20 / 2),
          ],
          toolbarHeight: 90,
          bottom: TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Women"),
              Tab(text: "Man"),
              Tab(text: "Children"),
              Tab(text: "Baby"),
            ],
          ),
        ),
        body: TabBarView(
          children: [Women(), Man(), Children(), Baby()],
        ),
      ),
    );
  }
}
