import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/plant_ui/constants/constants.dart';
import 'package:flutter_ui/src/plant_ui/models/plant_model.dart';
import 'package:flutter_ui/src/plant_ui/ui/widgets/icon_card.dart';

class DetailPlantScreen extends StatelessWidget {
  const DetailPlantScreen({Key key, this.plant}) : super(key: key);
  final PlantModel plant;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
              child: SizedBox(
                height: _size.height * 0.8,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 1.5),
                        child: Column(
                          children: [
                            SizedBox(height: kDefaultPadding),
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                                icon: SvgPicture.network(
                                  "${ApiConstants.BASE_URL_IMAGE}/plant_ui/icons/back_arrow.svg",
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            IconCard(
                              imgUrl: "${ApiConstants.BASE_URL_IMAGE}/plant_ui/icons/sun.svg",
                            ),
                            IconCard(
                              imgUrl: "${ApiConstants.BASE_URL_IMAGE}/plant_ui/icons/icon_2.svg",
                            ),
                            IconCard(
                              imgUrl: "${ApiConstants.BASE_URL_IMAGE}/plant_ui/icons/icon_3.svg",
                            ),
                            IconCard(
                              imgUrl: "${ApiConstants.BASE_URL_IMAGE}/plant_ui/icons/icon_4.svg",
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: _size.height * 0.8,
                      width: _size.width * 0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(63.0),
                            bottomLeft: Radius.circular(63.0),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                                "${ApiConstants.BASE_URL_IMAGE}/plant_ui/images/img.png"),
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.0, 10.0),
                              blurRadius: 60.0,
                              color: kPrimaryColor.withOpacity(0.29),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${plant.title}\n",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: plant.country,
                          style: TextStyle(
                            fontSize: 20,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "\$${plant.price}",
                    style: Theme.of(context).textTheme.headline5.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Row(
              children: [
                SizedBox(
                  width: _size.width / 2,
                  height: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                      backgroundColor: kPrimaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Description"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
