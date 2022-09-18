import 'package:flutter/material.dart';

class myMealItem extends StatelessWidget {
  final String? img;
  final String? title;

  myMealItem(
    this.img,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.orange,
              boxShadow: [BoxShadow(color: Colors.white)],
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.white)],
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img!), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(color: Colors.white)],
                ),
                child: null,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
          child: Text(title!),
        ),
      ],
    );
  }
}
