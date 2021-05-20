import 'package:flutter/material.dart';
import 'package:flutter_ui/src/plant_ui/constants/constants.dart';
import 'package:flutter_ui/src/plant_ui/models/plant_model.dart';

class FeaturedPlantItem extends StatelessWidget {
  const FeaturedPlantItem({Key key, this.plant}) : super(key: key);
  final PlantModel plant;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2,
      ),
      width: _size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: NetworkImage(plant.image),
        ),
      ),
    );
  }
}
