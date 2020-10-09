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
        // drawer: Drawer(),
        appBar: AppBar(
          iconTheme: new IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabBar(
                    indicatorColor: Colors.black,
                    isScrollable: true,
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(text: "Women"),
                      Tab(text: "Man"),
                      Tab(text: "Children"),
                      Tab(text: "Baby"),
                    ],
                  ),
                  IconButton(
                    icon: SvgPicture.asset("assets/icons/search.svg",
                        color: Colors.black),
                    onPressed: () {},
                  ),

                  IconButton(
                    icon: SvgPicture.asset("assets/icons/cart.svg",
                        color: Colors.black),
                    onPressed: () {},
                  ),
                  SizedBox(width: 5),

                  // SvgPicture.asset("assets/icons/Shop Icon.svg"),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Women(),
            Man(),
            Children(),
            Baby(),
          ],
        ),
      ),
    );
  }
}
