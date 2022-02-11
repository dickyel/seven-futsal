import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/models/daftar_models.dart';

class DaftarTextfield extends StatelessWidget {
  final DaftarModels field;
  DaftarTextfield(this.field);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Text(
          field.title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 20,
            ),
            fillColor: whiteColor,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: greyColor,
                width: 0.1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: field.name,
            hintStyle: TextStyle(
                color: greenColor, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
