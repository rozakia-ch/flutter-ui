import 'package:flutter/material.dart';
import 'package:flutter_ui/src/money_banking/constants/color_constants.dart';
import 'package:flutter_ui/src/money_banking/models/transaction_model.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({Key key, this.transaction}) : super(key: key);
  final TransactionModel transaction;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.0,
      margin: EdgeInsets.only(bottom: 13.0),
      padding: EdgeInsets.only(left: 24.0, top: 12.0, right: 10.0, bottom: 12.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kTenBlackColor,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(8.0, 8.0),
          )
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: kWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 57.0,
                width: 57.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(transaction.photo)),
                ),
              ),
              SizedBox(width: 13.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.name,
                    style: GoogleFonts.inter(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: kBlackColor,
                    ),
                  ),
                  Text(
                    transaction.date,
                    style: GoogleFonts.inter(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: kGreyColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                transaction.amount,
                style: GoogleFonts.inter(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  color: kBlueColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
