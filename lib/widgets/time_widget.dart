import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/models/time_models.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/models/time_models.dart';

class TimeWidget extends StatelessWidget {
  final TimeModels field;
  TimeWidget(this.field);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      margin: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
      decoration: BoxDecoration(
        color: field.inlineColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: field.outlineColor, width: 2),
      ),
      child: Center(
        child: Text(field.name,
            style: titleSplashStyle.copyWith(
                color: field.penColor,
                fontSize: 16,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
