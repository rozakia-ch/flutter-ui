import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/main/main_item.dart';
import 'package:flutter_ui/src/main/main_model.dart';
import 'package:flutter_ui/src/money_banking/ui/screens/money_banking_screen.dart';
import 'package:flutter_ui/src/pet_adoption_ui/ui/screens/pet_adoption_screen.dart';
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
        name: "Pets Adoption App",
        route: PetAdoptionScreen(),
        image: "${ApiConstants.BASE_URL_IMAGE}/pet_adoption_app.png",
      )
    ];
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
        // statusBarColor: Colors.white,
      ),
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("Flutter UI"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: _listUI.length,
              itemBuilder: (BuildContext context, int index) {
                Ui ui = _listUI[index];
                return MainItem(ui: ui);
              },
            ),
          ),
        ),
      ),
    );
  }
}
