import 'package:datdoan/data/data.dart';
import 'package:datdoan/models/restaurant.dart';
import 'package:datdoan/widgets/recent_oders.dart';
import 'package:datdoan/widgets/rating_start.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildRestaurant() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey,
                )),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Hero(
                    tag: restaurant.imageUrl,
                    child: Image(
                      height: 150.0,
                      width: 150.0,
                      image: AssetImage(restaurant.imageUrl),
                      fit: BoxFit.cover,
                    ),
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
                        restaurant.name,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      RatingStart(rating: restaurant.rating),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        restaurant.address,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        '0.2 miles away',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      );
    });
    return Column(
      children: restaurantList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          leading: IconButton(
            icon: Icon(Icons.account_circle),
            iconSize: 30,
            onPressed: () {},
          ),
          title: Text('Food ICTU'),
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                'Cart(5)',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            )
          ]),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'search Food or Restaurant',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        width: 0.8,
                        color: Theme.of(context).primaryColor,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        width: 0.8, color: Theme.of(context).primaryColor),
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  )),
            ),
          ),
          RecentOders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Danh sách quán ăn',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              _buildRestaurant(),
            ],
          )
        ],
      ),
    );
  }
}
