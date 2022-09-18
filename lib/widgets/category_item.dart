import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/menu.dart';
import '../models/category.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CategoryItem extends StatelessWidget {

void selectScreen(BuildContext ctx){
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return Menu();
  }));
}

  final String? id;
  final String? title;
  final Color? color;
  final String? img;
  final String? min;
  final String? rate;
  final bool ?isBusy;

  const CategoryItem({
    @required this.id,
    @required this.title,
    @required this.color,
    @required this.img,
    @required this.min,
    @required this.rate,
    this.isBusy=false,
  });

  final IconData star = Icons.star;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Stack(
            children: [
              InkWell(
                onTap:()=>selectScreen(context),
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // just add this line
                    /// by by fokr  noooo w8
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(color: Colors.white)],
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5, right: 15, left: 8, bottom: 5),
                          child: Text(
                            title!,
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 15),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.white)],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                            child: Text(
                              min!,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(img!), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  height: 85,
                  alignment: Alignment(.1, .1),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          "location",
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              rate!,
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              star,
                              color: Colors.amber,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Lorem-ipsum-dolor-sit-amet.",
                          style: TextStyle(
                            color: Colors.black26,
                          ),
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "min order:0\$-delvery:0\$.",
                          style: TextStyle(color: Colors.black26),
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-.9, .5),
                child: CircleAvatar(
                  radius: 80 / 2,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("image/4.png"),
                ),
              ),
              isBusy==true?
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(.5),
                ),
              ):SizedBox(),
              isBusy==true?
              Container(
                padding: EdgeInsets.only(left: 150, top: 75),
                child: Text(
                  "Busy",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ):SizedBox(),

            ],
          ),
        ),
      ],
    );
  }
}
