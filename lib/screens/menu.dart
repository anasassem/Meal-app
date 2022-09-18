import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import '../dummy_data.dart';
import '../widgets/menu_item.dart';



class Menu extends StatelessWidget {
  void selectScreen(BuildContext ctx,){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){

      return CategotiesScreen();
    }));
  }

  final int? currentController = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("image/5.jpg"), fit: BoxFit.fill)),
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
                      onPressed: () =>selectScreen(context),
                      padding: EdgeInsets.all(0),
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () {},
                      icon: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(5),
                      child: IconButton(
                        iconSize: 30,
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                height: 150,
                child: Align(
                  alignment: Alignment(-.9, 3.5),
                  child: CircleAvatar(
                    radius: 80 / 2,
                    backgroundImage: AssetImage("image/4.png"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment(.8, -1.8),
                child: IconButton(
                  color: Colors.grey,
                  iconSize: 40,
                  onPressed: () {},
                  icon: Icon(
                    Icons.share_outlined,
                    color: Color(0xffD55C28),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(.1, -1.8),
                child: IconButton(
                  color: Colors.grey,
                  iconSize: 40,
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Color(0xffD55C28),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  "Zack's",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30,
                ),
              ),
              Text(
                "3.8",
                style: TextStyle(fontSize: 25, color: Colors.amber),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Lorem-ipsum-dolor-sit-amet",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "min order: 0 \$ delvery: 0 \$",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 16),
                child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color(0xffFFCC9C),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Text(
                      "Lorem",
                      style: TextStyle(fontSize: 12, color: Color(0xffD55C28)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color(0xffFFCC9C),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Text(
                      "ipsum",
                      style: TextStyle(fontSize: 12, color: Color(0xffD55C28)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color(0xffFFCC9C),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Text(
                      "dolor",
                      style: TextStyle(fontSize: 12, color: Color(0xffD55C28)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color(0xffFFCC9C),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Text(
                      "amet",
                      style: TextStyle(fontSize: 12, color: Color(0xffD55C28)),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              right: 190,
              left: 15,
            ),
            child: Container(
              height: 40,
              width: 300,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xffFFCC9C),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                "Discount",
                style: TextStyle(fontSize: 25, color: Color(0xffD55C28)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9, bottom: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.red),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffD55C28).withOpacity(.2),
                        blurRadius: 5,
                        offset: Offset(0, 3)),
                  ]),
              child: DefaultTabController(
                length: 5,
                child: TabBar(
                  tabs: [
                    Icon(Icons.list),
                    Tab(
                      text: "Lorem",
                    ),
                    Tab(
                      text: "ipsum",
                    ),
                    Tab(
                      text: "dolor",
                    ),
                    Tab(
                      text: "amet",
                    ),
                  ],
                  indicatorColor: Color(0xffD55C28),
                  overlayColor: MaterialStateProperty.all(
                      Color(0xffD55C28).withOpacity(.2)),
                  labelColor: Color(0xffD55C28),
                  unselectedLabelColor: Colors.black45,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 500,
            color: Color(0xffFFCC9C),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xffD55C28),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 160,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3.4,
                crossAxisSpacing: 1,
                mainAxisSpacing: 10,
              ),
              children: Menus.map((menu) => MenuItem2(
                title: menu.title,
                txt: menu.txt,
                price: menu.price,
                rate: menu.rate,
                img: menu.img,
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
