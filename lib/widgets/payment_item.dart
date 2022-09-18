import 'package:flutter/material.dart';
import 'package:meal_app/screens/menu.dart';
import 'package:meal_app/widgets/last_page.dart';
import 'package:meal_app/widgets/size_item_selected.dart';

class PaymentItem extends StatelessWidget {

  void selectScreen(BuildContext ctx,int n){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return n==1?SizedSelected():n==2?Byby():Menu();
    }));
  }
  final String? txt;
  final String? title;
  final String? img;
  final double? price;

  PaymentItem({
    @required this.txt,
    @required this.title,
    @required this.img,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Stack(children: [
            Container(
              height: 200,
              color: Colors.orange.withOpacity(.1),
            ),
            Container(
                height: 50,
                padding: EdgeInsets.only(top: 10),
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_back_ios_sharp),
                  backgroundColor: Color(0xffFFCC9C).withOpacity(.7),
                  foregroundColor: Color(0xffD55C28),
                  onPressed: () =>selectScreen(context,1),
                )),
            SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(top: 80, left: 10),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: Color(0xffD55C28))],
                        color: Color(0xffD55C28),
                      ),
                      child: CircleAvatar(
                        radius: 100 / 2,
                        backgroundImage: AssetImage("image/4.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: Text(
                            "Zack's",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "Lorem-Ipsum-dolor-amit",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
          Container(
            height: 40,
            width: double.infinity,
            color: Color(0xffFFCC9C),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lorem",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lorem",
                    style: TextStyle(color: Color(0xffD55C28), fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          ItemPayment(),
          Divider(
            color: Color(0xffD55C28),
            thickness: 1,
          ),
          ItemPayment(),
          Divider(
            color: Color(0xffD55C28),
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: TextRow(txt: "Price",),
          ),
          TextRow(txt: "Discount",),
          TextRow(txt: "Total",),


          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: ()=> selectScreen(context,2),
                child: Text("Continue"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffFFCC9C)),
                  foregroundColor:
                  MaterialStateProperty.all(Color(0xffD55C28)),
                  overlayColor: MaterialStateProperty.all(Color(0xffFFCC9C)),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () =>selectScreen(context, 3),
            child: Text("Add More"),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Color(0xffD55C28))),
          )
        ],
      ),
    );
  }
}





class TextRow extends StatelessWidget {
  final String txt;

  const TextRow({
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(txt,style: TextStyle(fontSize: 18),),
          Text("00\$",style: TextStyle(fontSize: 18,color: Color(0xffD55C28)),),
        ],
      ),
    );
  }
}

class ItemPayment extends StatelessWidget {
  const ItemPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              shape: BoxShape.rectangle,
              boxShadow: [BoxShadow(color: Color(0xffD55C28))],
              color: Color(0xffD55C28),
            ),
            child: Container(
              height: 70,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: [BoxShadow(color: Color(0xffD55C28))],
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffD55C28),
                image: DecorationImage(
                    image: AssetImage("image/3.jpg"), fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Lorem-Ipsum-dolor-amit",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Price:00\$",
                  style: TextStyle(fontSize: 18, color: Color(0xffD55C28)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Counter(),
            ),
          ],
        )
      ],
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
    return Column(
      children: [
        SizedBox(
          height: 28,
          width: 28,
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
          height: 5,
        ),
        Text("$counter"),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 28,
          width: 28,
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
