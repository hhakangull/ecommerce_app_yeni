import 'package:e_app/config/constants.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String fullName;
  final String status;
  final String imageUrl;
  final String amount;

  ItemCard(
      {@required this.fullName,
      @required this.status,
      @required this.imageUrl,
      @required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Payment " + status,
                  style: TextStyle(
                    color: kGreyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Divider(),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                (status == "received" ? "+" : "-") + r" $ " + amount + " USD",
                style: TextStyle(
                  color: status == "received" ? Colors.green : Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("26 Jan", style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
