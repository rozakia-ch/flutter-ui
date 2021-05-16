import 'package:flutter/material.dart';
import 'package:flutter_ui/src/travel_ui/constants/data.dart';
import 'package:flutter_ui/src/travel_ui/models/destination.dart';
import 'package:flutter_ui/src/travel_ui/ui/widgets/destination_item.dart';

class DestinationCarousel extends StatelessWidget {
  const DestinationCarousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Destinations",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Data.destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = Data.destinations[index];
              return DestinationItem(destination: destination);
            },
          ),
        ),
      ],
    );
  }
}
