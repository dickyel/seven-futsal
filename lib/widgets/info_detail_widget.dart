import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/models/info_detail_models.dart';

class InfoDetailWidget extends StatelessWidget {
  final InfoDetailModels field;
  InfoDetailWidget(this.field);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Card(
        elevation: 2,
        margin: EdgeInsets.only(bottom: 5),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(field.img), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          field.name,
                          style: titleSplashStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/Location.svg',
                            ),
                            SizedBox(width: 4),
                            Text(
                              field.kota,
                              style: titleSplashStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor2),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/Star.svg',
                            ),
                            SizedBox(width: 4),
                            Text(
                              field.rating,
                              style: titleSplashStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor2),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/Time Circle.svg',
                            ),
                            SizedBox(width: 4),
                            Text(
                              field.menit,
                              style: titleSplashStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor2),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/Ticket.svg',
                            ),
                            SizedBox(width: 4),
                            Text(
                              field.harga,
                              style: titleSplashStyle.copyWith(
                                  color: greenColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
