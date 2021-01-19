import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard({
    @required this.primaryColor,
    @required this.secondaryColor,
    @required this.currencyType,
    @required this.currencyValue,
    @required this.currencyIcon,
  });
  final Color primaryColor, secondaryColor;
  final String currencyType, currencyValue;
  final dynamic currencyIcon;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 175.0,
        width: 175.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: secondaryColor,
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(
                      currencyIcon,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '+15.1 %',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      fontFamily: 'Montserrat',
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.0),
              Text(
                currencyType.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                ),
              ),
              Text(
                '\$ $currencyValue',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
