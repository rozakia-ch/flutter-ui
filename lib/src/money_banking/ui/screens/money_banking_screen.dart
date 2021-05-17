import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/src/constants/api_constants.dart';

class MoneyBankingScreen extends StatelessWidget {
  const MoneyBankingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 8.0),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              SizedBox(height: 16.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.network(
                      "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/svg/drawer_icon.svg",
                    ),
                    Container(
                      height: 59.0,
                      width: 59.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "${ApiConstants.BASE_URL_IMAGE}/money_banking_ui/images/user_image.png",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
