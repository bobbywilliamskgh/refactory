import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user_location.dart';

class CurrentPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Posisi saat ini :',
            style: TextStyle(color: Theme.of(context).accentColor),
          ),
          SizedBox(
            height: 8,
          ),
          if (userLocation == null)
            Text(
              'Latitude : 0.0',
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
          if (userLocation != null)
            Text(
              'Latitude : ${userLocation.latitude}',
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
          if (userLocation == null)
            Text(
              'Longitude : 0.0',
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
          if (userLocation != null)
            Text(
              'Longitude : ${userLocation.longitude}',
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
        ],
      ),
    );
  }
}
