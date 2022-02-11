import 'package:flutter/material.dart';
import 'package:sevenfutsalapps/ui/theme.dart';
import 'package:sevenfutsalapps/models/gallery_models.dart';

class GalleryWidget extends StatelessWidget {
  final GalleryModels field;
  GalleryWidget(this.field);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      width: 74,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              field.img,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
