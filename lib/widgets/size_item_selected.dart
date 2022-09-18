import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screens/menu.dart';
import 'package:meal_app/widgets/payment_item.dart';

class SizedSelected extends StatelessWidget {
  void selectScreen(BuildContext ctx,int n){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return n==1?Menu():PaymentItem();
    }));
  }

  final int? size;
  final String? title;
  final String? txt;
  final String? rate;
  final String? img;

  SizedSelected({
    @required this.img,
    @required this.size,
    @required this.title,
    @required this.txt,
    @required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage("image/5.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 33,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.7),
                        shape: BoxShape.circle),
                    child: IconButton(
                      onPressed: () =>selectScreen(context, 1),
                      padding: EdgeInsets.all(0),
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          iconSize: 30,
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart_outlined),
                          color: Color(0xffD55C28),
                        )),
                  ),
                ],
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 620,
                    child: Align(
                      alignment: Alignment(-.9, 2),
                      child: Container(
                        height: 520,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40))),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 150, left: 5),
                          child: Divider(
                            indent: 120,
                            endIndent: 120,
                            color: Color(0xffD55C28),
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Divider(
                            indent: 150,
                            endIndent: 150,
                            color: Color(0xffD55C28),
                            thickness: 1,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Data",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                "Lorem-ipsum-dolor-amit",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.only(top: 10, left: 100),
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.only(top: 10, left: 2),
                              child: Text(
                                "3.8",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.amber),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizeChoosed(
                              selectedclr: Color(0xffD55C28),
                              size: "S",
                              unselectedcolor: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Counter(),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizeChoosed(
                              selectedclr: Color(0xffD55C28),
                              size: "M",
                              unselectedcolor: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Counter(),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizeChoosed(
                              selectedclr: Color(0xffD55C28),
                              size: "L",
                              unselectedcolor: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Counter(),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 20, left: 25),
                          child: Text(
                            "Lorem",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "Lorem-Ipsum-dolor-amit"),
                            maxLines: 3,
                          ),
                        ),
                        Container(
                          width: 230,
                          child: ElevatedButton(
                            onPressed: () =>selectScreen(context,2),
                            child: Text("Add To Chart"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xffFFCC9C)),
                              foregroundColor:
                                  MaterialStateProperty.all(Color(0xffD55C28)),
                              overlayColor: MaterialStateProperty.all(
                                  Color(0xffD55C28).withOpacity(.2)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 35,
          width: 35,
          child: FloatingActionButton(
            child: Icon(
              Icons.add,
            ),
            splashColor: Color(0xffFFCC9C),
            backgroundColor: Color(0xffFFCC9C),
            foregroundColor: Color(0xffD55C28),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text("$counter"),
        SizedBox(
          width: 5,
        ),
        SizedBox(
          height: 35,
          width: 35,
          child: FloatingActionButton(
            elevation: 10,
            child: Icon(
              Icons.minimize,
            ),
            backgroundColor: Colors.grey.shade300,
            foregroundColor: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              setState(() {
                counter > 0 ? counter-- : counter = 0;
              });
            },
          ),
        ),
      ],
    );
  }
}

class SizeChoosed extends StatefulWidget {
  final String? size;
  final Color? selectedclr;
  final Color? unselectedcolor;

  const SizeChoosed(
      {this.size, required this.selectedclr, this.unselectedcolor});

  @override
  State<SizeChoosed> createState() => _SizeChoosedState();
}

class _SizeChoosedState extends State<SizeChoosed> {
  Color clr = Colors.grey;
  Color selectedclr = Color(0xffD55C28);
  Color unselectedcolor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 20, left: 20),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: clr)),
        child: IconButton(
          onPressed: () {
            setState(() {
              clr == unselectedcolor
                  ? clr = selectedclr
                  : clr = unselectedcolor;
            });
          },
          icon: Text(
            widget.size!,
            style: TextStyle(fontSize: 15),
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}
