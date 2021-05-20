import 'package:flutter/material.dart';
import 'package:flutter_ui/src/plant_ui/constants/constants.dart';
import 'package:flutter_ui/src/plant_ui/models/plant_model.dart';
import 'package:flutter_ui/src/plant_ui/ui/screens/detail_plant_screen.dart';

class PlantItem extends StatelessWidget {
  const PlantItem({Key key, @required this.plant}) : super(key: key);
  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPlantScreen(plant: plant)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          // bottom: kDefaultPadding * 2.5,
        ),
        width: _size.width * 0.4,
        child: Column(
          children: [
            Image.network(plant.image),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50.0,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "${plant.title}\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "${plant.country}".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$${plant.price}',
                    style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
