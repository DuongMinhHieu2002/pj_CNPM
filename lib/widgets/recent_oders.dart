import 'package:datdoan/data/data.dart';
import 'package:datdoan/models/order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

_buildRecenrOrder(BuildContext context, Order order) {
  return Container(
    margin: EdgeInsets.all(10.0),
    width: 320,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: Colors.grey,
        )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  height: 100.0,
                  width: 100.0,
                  image: AssetImage(order.food.imageUrl),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                order.food.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 4.0),
              Text(
                order.restaurant.name,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                order.date,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        )),
        Container(
          margin: EdgeInsets.only(right: 20),
          width: 48.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            iconSize: 30,
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}

class RecentOders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Đã xem gần đây',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ))),
        Container(
          height: 120,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders.length,
              itemBuilder: (BuildContext context, int index) {
                Order order = currentUser.orders[index];
                return _buildRecenrOrder(context, order);
              }),
        )
      ],
    );
  }
}
