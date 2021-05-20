import 'package:flutter/material.dart';
import 'package:flutter_ui/src/plant_ui/constants/data_constants.dart';
import 'package:flutter_ui/src/plant_ui/constants/constants.dart';
import 'package:flutter_ui/src/plant_ui/models/plant_model.dart';
import 'package:flutter_ui/src/plant_ui/ui/widgets/featured_plant_item.dart';
import 'package:flutter_ui/src/plant_ui/ui/widgets/button_more.dart';
import 'package:flutter_ui/src/plant_ui/ui/widgets/title_with_custom_underline.dart';

class FeaturedPlant extends StatelessWidget {
  const FeaturedPlant({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleWithCustomUnderline(title: "Featured"),
              ButtonMore(),
            ],
          ),
        ),
        Container(
          height: 185.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: kDefaultPadding),
              itemCount: DataConstants.featureds.length,
              itemBuilder: (context, index) {
                PlantModel plant = DataConstants.featureds[index];
                return FeaturedPlantItem(plant: plant);
              }),
        ),
      ],
    );
  }
}
