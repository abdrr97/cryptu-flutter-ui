import 'package:crypto_currency_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

import 'components/currency_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _toggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: kDarkGreyColor,
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Crypto ', style: kTitleBoldStyle),
                        Text('balance', style: kTitleStyle)
                      ],
                    ),
                    SizedBox(height: 45.0),
                    Text('\$ 15 624 ', style: kCurrencyTextStyle),
                    SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          color: kBlackColor,
                          size: 20.0,
                        ),
                        Text('\$261.73', style: kRegularBlackTextStyle),
                        SizedBox(width: 20.0),
                        Text('5.1 %', style: kRegularOrangeTextStyle),
                        Icon(
                          Icons.arrow_drop_up,
                          color: kOrangeColor,
                          size: 20.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        FlatButton(
                          child: Center(
                            child: Text(
                              'Wallets ',
                              style: _toggle
                                  ? kRegularBlackTextStyle
                                  : kRegularGreyTextStyle,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _toggle = true;
                            });
                          },
                        ),
                        FlatButton(
                          child: Center(
                            child: Text(
                              'View all',
                              style: _toggle
                                  ? kRegularGreyTextStyle
                                  : kRegularBlackTextStyle,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _toggle = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: GridView.count(
                    crossAxisCount: 2,
                    scrollDirection: Axis.vertical,
                    crossAxisSpacing: 2.5,
                    mainAxisSpacing: 2.5,
                    shrinkWrap: true,
                    primary: false,
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    children: <Widget>[
                      CurrencyCard(
                        primaryColor: kDarkGreyColor,
                        secondaryColor: kBlackColor,
                        currencyType: 'ETH',
                        currencyValue: '1 721',
                        currencyIcon: CryptoFontIcons.ETH,
                      ),
                      CurrencyCard(
                        primaryColor: kOrangeColor,
                        secondaryColor: kOrangeLightColor,
                        currencyType: 'BTC',
                        currencyValue: '2 903',
                        currencyIcon: CryptoFontIcons.BTC,
                      ),
                      if (_toggle)
                        CurrencyCard(
                          primaryColor: Color(0xFF145DA0),
                          secondaryColor: Color(0xFF2E8BC0),
                          currencyType: 'DASH',
                          currencyValue: '203',
                          currencyIcon: CryptoFontIcons.DASH,
                        ),
                      if (_toggle)
                        CurrencyCard(
                          primaryColor: Color(0xFF340744),
                          secondaryColor: Color(0xFF741AAC),
                          currencyType: 'BAY',
                          currencyValue: '560',
                          currencyIcon: CryptoFontIcons.BAY,
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
