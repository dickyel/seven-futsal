import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/models/history_models.dart';

class HistoryWidget extends StatelessWidget {
  final HistoryModels field;
  HistoryWidget(this.field);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      padding: EdgeInsets.only(
        top: 80,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(field.img),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            field.name,
            style: captionSplashStyle.copyWith(
              color: whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Seven Futsal',
            style: captionSplashStyle.copyWith(
              color: whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
