import 'package:crypto_font_icons/crypto_font_icon_data.dart';
import 'package:flutter/material.dart';

class Currency {
  final Color mainColor;
  final Color secondaryColor;
  final String currencyType;
  final String currencyValue;
  final CryptoFontIconData currencyIcon;
  Currency({
    @required this.mainColor,
    @required this.secondaryColor,
    @required this.currencyType,
    @required this.currencyValue,
    @required this.currencyIcon,
  });
}
