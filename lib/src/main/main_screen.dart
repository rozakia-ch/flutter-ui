import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_ui/src/constants/api_constants.dart';
import 'package:travel_ui/src/main/main_item.dart';
import 'package:travel_ui/src/main/main_model.dart';
import 'package:travel_ui/src/travel_ui/ui/screens/travel_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Ui> _listUI = [
      Ui(
        name: "Travel UI",
        route: TravelScreen(),
        image: "${ApiConstants.BASE_URL_IMAGE}/travel_app.png",
      ),
      Ui(
        name: "Travel UI",
        route: TravelScreen(),
        image: "${ApiConstants.BASE_URL_IMAGE}/travel_app.png",
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
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
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
      ),
    );
  }
}
