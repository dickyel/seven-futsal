import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/models/infolapangan_models.dart';

class InfoLapangan extends StatelessWidget {
  final InfoLapanganModels field;
  InfoLapangan(this.field);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        height: 160,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 11, right: 11),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(field.icon),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      field.name,
                      style: captionSplashStyle.copyWith(
                        color: blackColor2,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
