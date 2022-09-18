import 'package:flutter/material.dart';

class Byby extends StatelessWidget {

final Color color = Colors.deepOrange.withOpacity(.1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                  ),

                ], color: Colors.white.withOpacity(.5)),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Icon(
                    Icons.fastfood_rounded,
                    color: Colors.deepOrange,
                    size: 100,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,bottom: 100),
              child: Text("      Your Order \n  will arrive soon",style: TextStyle(fontSize: 25,color: Colors.deepOrange),),
            ),
          ],
        ),
      ),
    );
  }
}
