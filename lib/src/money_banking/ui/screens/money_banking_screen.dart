import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/money_banking/constants/color_constants.dart';
import 'package:flutter_ui/src/money_banking/constants/data.dart';
import 'package:flutter_ui/src/money_banking/models/card_model.dart';
import 'package:flutter_ui/src/money_banking/models/operation_model.dart';
import 'package:flutter_ui/src/money_banking/models/transaction_model.dart';
import 'package:flutter_ui/src/money_banking/ui/widgets/card_item.dart';
import 'package:flutter_ui/src/money_banking/ui/widgets/operation_item.dart';
import 'package:flutter_ui/src/money_banking/ui/widgets/transaction_item.dart';
import 'package:google_fonts/google_fonts.dart';

class MoneyBankingScreen extends StatefulWidget {
  const MoneyBankingScreen({Key key}) : super(key: key);

  @override
  _MoneyBankingScreenState createState() => _MoneyBankingScreenState();
}

class _MoneyBankingScreenState extends State<MoneyBankingScreen> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> _result = [];
    for (var i = 0; i < list.length; i++) {
      _result.add(handler(i, list[i]));
    }
    return _result;
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: SafeArea(
          child: Container(
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
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: kBlackColor,
                        ),
                      ),
                      Text(
                        "Amanda Alex",
                        style: GoogleFonts.inter(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  height: 199.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 16.0, right: 6.0),
                      itemCount: Data.cards.length,
                      itemBuilder: (context, index) {
                        CardModel card = Data.cards[index];
                        return CardItem(card: card);
                      }),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Operations",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor,
                        ),
                      ),
                      Row(
                        children: map<Widget>(
                          Data.operations,
                          (index, selected) => Container(
                            margin: EdgeInsets.only(right: 6.0),
                            alignment: Alignment.centerLeft,
                            height: 9.0,
                            width: 9.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index ? kBlackColor : kTwentyBlueColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.0),
                Container(
                  height: 123.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 16.0, right: 6.0),
                      itemCount: Data.operations.length,
                      itemBuilder: (context, index) {
                        OperationModel operation = Data.operations[index];
                        return GestureDetector(
                          onTap: () => setState(() => _current = index),
                          child: OperationItem(
                            operation: operation,
                            isSelected: _current == index ? true : false,
                          ),
                        );
                      }),
                ),
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Transactions",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: kBlackColor,
                    ),
                  ),
                ),
                SizedBox(height: 13.0),
                ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    shrinkWrap: true,
                    itemCount: Data.operations.length,
                    itemBuilder: (context, index) {
                      TransactionModel transaction = Data.transactions[index];
                      return TransactionItem(transaction: transaction);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
