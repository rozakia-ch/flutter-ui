import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/src/travel_ui/models/hotel.dart';

class HotelItem extends StatelessWidget {
  const HotelItem({Key key, this.hotel}) : super(key: key);
  final Hotel hotel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 240.0,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 15.0,
            child: Container(
              height: 120.0,
              width: 240.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    hotel.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    hotel.address,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    "\$ ${hotel.price} / night",
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                height: 180,
                width: 220,
                image: NetworkImage(hotel.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
