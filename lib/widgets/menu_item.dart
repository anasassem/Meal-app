import 'package:flutter/material.dart';
import 'package:meal_app/widgets/size_item_selected.dart';

class MenuItem2 extends StatelessWidget {
  void selectScreen(BuildContext ctx,){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){

      return SizedSelected();
    }));
  }
  final String? title;
  final String? txt;
  final double? price;
  final double? rate;
  final String? img;

  const MenuItem2({
    @required this.title,
    @required this.txt,
    @required this.price,
    @required this.rate,
    @required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectScreen(context),
      child: Container(
        padding: EdgeInsets.only(top: 5),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Color(0xffD55C28).withOpacity(.2)),
              bottom: BorderSide(color: Color(0xffD55C28).withOpacity(.2)),
            ),
            boxShadow: [
              BoxShadow(color: Color(0xffD55C28).withOpacity(.2), blurRadius: 5)
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 5),
                    child: Text(title!),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 3.0),
                    child: Text(txt!),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    child: Text("Price :${price!}\$",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffD55C28),
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 15),
                      child: Text(
                        "${rate!}",
                        style: TextStyle(fontSize: 18, color: Colors.amber),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 4,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img!), fit: BoxFit.contain)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
