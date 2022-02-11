import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/svg/Ellipse 6.svg'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Tersedia',
                    style: titleSplashStyle.copyWith(
                      color: blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/svg/Ellipse 8.svg'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Dipilih',
                    style: titleSplashStyle.copyWith(
                      color: blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/svg/Ellipse 7.svg'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Penuh',
                    style: titleSplashStyle.copyWith(
                      color: blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/svg/Ellipse 8 (1).svg'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Istirahat',
                    style: titleSplashStyle.copyWith(
                      color: blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
