import 'package:flutter/material.dart';
import 'package:messanger/model/massage_model.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Favourites',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5)),
              IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30.0,
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
        Container(
          height: 120.0,
          color: Colors.blue,
          child: ListView.builder(
              padding: EdgeInsets.only(left: 20.0),
              scrollDirection: Axis.horizontal,
              itemCount: favourites.length,
              itemBuilder: (BuildContext contect, int index) {
                return Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(favourites[index].imageUrl),
                    ),
                    Text(favourites[index].name),
                  ],
                );
              }),
        )
      ],
    );
  }
}
