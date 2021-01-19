import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';

import './utils/constants.dart';
import 'components/currency_card.dart';

final List<CurrencyCard> currencyList = [
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
  CurrencyCard(
    primaryColor: Color(0xFF145DA0),
    secondaryColor: Color(0xFF2E8BC0),
    currencyType: 'DASH',
    currencyValue: '203',
    currencyIcon: CryptoFontIcons.DASH,
  ),
  CurrencyCard(
    primaryColor: Color(0xFF340744),
    secondaryColor: Color(0xFF741AAC),
    currencyType: 'BAY',
    currencyValue: '560',
    currencyIcon: CryptoFontIcons.BAY,
  ),
];

// const kBlackColor = Color(0xFF1B2334);
// const kOrangeColor = Color(0xFFF89927);
// const kOrangeLightColor = Color(0xFFFFBB68);
// const kGreyColor = Color(0xFFCBCBCB);
// const kDarkGreyColor = Color(0xFF434E65);

// CurrencyCard(
//   primaryColor: kDarkGreyColor,
//   secondaryColor: kBlackColor,
//   currencyType: 'ETH',
//   currencyValue: '1 721',
//   currencyIcon: CryptoFontIcons.ETH,
// ),
// CurrencyCard(
//   primaryColor: kOrangeColor,
//   secondaryColor: kOrangeLightColor,
//   currencyType: 'BTC',
//   currencyValue: '2 903',
//   currencyIcon: CryptoFontIcons.BTC,
// ),
// if (_toggle)
//   CurrencyCard(
//     primaryColor: Color(0xFF145DA0),
//     secondaryColor: Color(0xFF2E8BC0),
//     currencyType: 'DASH',
