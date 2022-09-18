import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/widgets/category_item.dart';
import 'package:meal_app/widgets/meal%20item.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';
class CategotiesScreen extends StatefulWidget {

  @override
  State<CategotiesScreen> createState() => _CategotiesScreenState();
}

class _CategotiesScreenState extends State<CategotiesScreen> {
 bool online=false;
 bool current_value =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("image/bill.svg",width: 30,height: 30,),
        ),
        iconTheme: IconThemeData(),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: IconButton(
                onPressed: (){},
                icon:Icon(Icons.keyboard_arrow_down,size: 15,),
                color: Colors.deepOrange,
              ),
            ),
            Text(
              "Your Location",
              style: TextStyle(color: Colors.deepOrange),
            ),
            Icon(
              Icons.arrow_right_alt,
              size: 18,
              color: Colors.black,
            ),
            Text(
              "Delivery",
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: Transform(
                alignment: Alignment.center,
                transform:Matrix4.rotationY(pi) ,
                child: SvgPicture.asset("image/food.svg",width: 30,height: 30,),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xfff2f3f2),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffedeeed),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "image/filter.png",
                      color: Colors.deepOrange,
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, right: 10, bottom: 10),
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Color(0xffedeeed),
                          ),
                        ),
                        fillColor: Color(0xffedeeed),
                        filled: true,
                        hintText: "Find Your Restaurant",
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,bottom: 25),
            child: Text(
              "Find what you want",
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 150,
            child: GridView(
              padding: EdgeInsets.all(12),
              scrollDirection: Axis.horizontal,
              children: Meals.map((meal) => myMealItem(meal.img,meal.title)).toList(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3/3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 10),
            ),
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 15),
                child: Text("Restaurant",style: TextStyle(color: Colors.deepOrange,fontSize: 18),),
              ),
              Padding(
                padding: EdgeInsets.only(left: 70,top: 15),
                child: Icon(Icons.task_alt ,color: Colors.green,size: 20,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,top: 15),
                child: Text("Online Order",style: TextStyle(color: Colors.deepOrange,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Switch(value:online, onChanged: (current_value){
                  setState(() {
                    online=current_value;
                  });
                },activeColor: Colors.deepOrange,),
              )
            ],
          ),
          Expanded(
            child: GridView(
              padding: EdgeInsets.all(12),
              children: online == true // <==its same==> online
              // element.isBusy == false <==its same==> !element.isBusy
                  ? DUMMY_CATEGORIES.where((element) => !(element.isBusy ??false)).map((catData) => CategoryItem(id: catData.id ,title:catData.title,
                  color:catData.color, img:catData.img,min: catData.min,rate: catData.rate,isBusy: catData.isBusy)).toList()
                :
              DUMMY_CATEGORIES.map((catData) => CategoryItem(id: catData.id ,title:catData.title,
                  color:catData.color, img:catData.img,min: catData.min,rate: catData.rate,isBusy: catData.isBusy)).toList(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
            ),
          ),
        ],
      ),
    );

  }
}
