import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/main/main_item.dart';
import 'package:flutter_ui/src/main/main_model.dart';
import 'package:flutter_ui/src/money_banking/ui/screens/money_banking_screen.dart';
import 'package:flutter_ui/src/pet_adoption_ui/ui/screens/pet_adoption_screen.dart';
import 'package:flutter_ui/src/plant_ui/ui/screens/plant_screen.dart';
import 'package:flutter_ui/src/travel_ui/ui/screens/travel_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Ui> _listUI = [
      Ui(
        name: "Travel App for booking unique experience",
        route: TravelScreen(),
        image: "${ApiConstants.BASE_URL_IMAGE}/travel_app.png",
      ),
      Ui(
        name: "Moora Money Banking Management App UI",
        route: MoneyBankingScreen(),
        image: "${ApiConstants.BASE_URL_IMAGE}/money_banking_app.png",
      ),
      Ui(
        name: "Pets Adoption App UI",
        route: PetAdoptionScreen(),
        image: "${ApiConstants.BASE_URL_IMAGE}/pet_adoption_app.png",
      ),
      Ui(
        name: "Flutter Plant App UI",
        route: PlantScreen(),
        image: "${ApiConstants.BASE_URL_IMAGE}/plant_app.png",
      ),
    ];
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Flutter UI",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          itemCount: _listUI.length,
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          itemBuilder: (BuildContext context, int index) {
            Ui ui = _listUI[index];
            return MainItem(ui: ui);
          },
          staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
        ),
      ),
    );
  }
}
