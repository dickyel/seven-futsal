import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: blackColor,
      ),
    ),
    backgroundColor: whiteColor,
    elevation: 0,
    centerTitle: true,
    title: Image.asset(
      'assets/img/logo.png',
      height: 40,
    ),
  );
}
