import 'package:flutter/material.dart';

textStyle ({required BuildContext context, required FontWeight fontWeight ,required double size, Color color = Colors.black}){
  return Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontWeight: fontWeight,
      fontSize: size,
      color: color
  );
}