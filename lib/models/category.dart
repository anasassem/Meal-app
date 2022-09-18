import 'package:flutter/material.dart';

class Category {
  final String? id;
  final String? title;
  final Color? color;
  final String ?img;
  final String ? min;
  final String ? rate;
  final bool ? isBusy;

  const Category({
    @required this.id,
    @required this.title,
    this.color = Colors.red,
    this.min,
    @required this.img,
    this.rate,
    this.isBusy=false
  });
}
