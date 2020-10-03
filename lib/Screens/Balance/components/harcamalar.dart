import 'dart:math';

import 'package:e_app/config/constants.dart';
import 'package:flutter/material.dart';

import 'harcamalar_item.dart';

class HarcamalarEkrani extends StatefulWidget {
  const HarcamalarEkrani({Key key}) : super(key: key);

  @override
  _HarcamalarEkraniState createState() => _HarcamalarEkraniState();
}

class _HarcamalarEkraniState extends State<HarcamalarEkrani> {
  List<Map<String, dynamic>> categories = [
    {"icon": "assets/images/fuel.png", "text": "Akaryakıt"},
    {"icon": "assets/images/store.png", "text": "Pazar"},
    {"icon": "assets/images/clothes.png", "text": "Giyim"},
    {"icon": "assets/images/market.png", "text": "Market"},
    {"icon": "assets/images/toys.png", "text": "Oyuncak"},
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // SizedBox(height: 12),
          ListView.builder(
            itemBuilder: (context, index) {
              int randomNumber = Random().nextInt(5);
              return Column(
                children: [
                  // Divider(color: Colors.white),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(243, 245, 248, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: ItemCard(
                        imageUrl: categories[randomNumber]["icon"],
                        fullName: categories[randomNumber]["text"],
                        status: index % 2 == 0 ? "received" : "sended",
                        amount: Random().nextInt(250).toString(),
                      ),
                    ),
                    elevation: 6,
                  ),
                ],
              );
            },
            shrinkWrap: true,
            itemCount: 15,
            controller: ScrollController(keepScrollOffset: true),
          ),
        ],
      ),
    );
  }
}
