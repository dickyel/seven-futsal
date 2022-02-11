import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/pages/checkout_info_payment.dart';
import 'package:sevenfutsalapps/pages/checkout_payment_download.dart';
import 'package:sevenfutsalapps/pages/daftar_page.dart';
import 'package:sevenfutsalapps/pages/description_page.dart';
import 'package:sevenfutsalapps/pages/field_choose.dart';
import 'package:sevenfutsalapps/pages/home_page.dart';
import 'package:sevenfutsalapps/pages/onboarding_one.dart';
import 'package:sevenfutsalapps/pages/check_your_phone.dart';
import 'package:sevenfutsalapps/pages/checkout_payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
