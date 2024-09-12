import 'package:flutter/material.dart';
import 'package:recipe_app/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.teal
        ,onPressed:(){} ,child: Icon(Icons.add,),),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 50,left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                
                children: [
                  Text("Looking for your\n favourite meal",style: TextStyle(color: Colors.black,fontSize: 25.0,fontWeight:FontWeight.bold),),
                  Spacer(),
                  ClipRRect
                  (borderRadius:BorderRadius.circular(20) ,
                    child: Image.asset("images/girl4.jpg",height: 60,width: 60,fit: BoxFit.cover,))
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(right: 20.0,),
              padding: EdgeInsets.only(left: 20.0,top:5 ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.teal.shade100,borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none,suffixIcon: Icon(Icons.search_outlined),hintText: "Search Recipe...",hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black38)),
              ),
            ),
            SizedBox(height: 20,),
           Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
             child: Expanded(
               child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        ClipRRect
                        (borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/soup.jpg",height: 120,width: 120,fit: BoxFit.cover,)),
                        SizedBox(height: 10.0,),
                        Text("Soup Recipes",style: AppWidget.lightfieldtextstyle(),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        ClipRRect
                        (borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/maincourse.jpg",height: 120,width: 120,fit: BoxFit.cover,)),
                        SizedBox(height: 10.0,),
                        Text("Main Course",style: AppWidget.lightfieldtextstyle(),)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: Column(
                      children: [
                        ClipRRect
                        (borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/pizza.jpg",height: 120,width: 120,fit: BoxFit.cover,)),
                        SizedBox(height: 10.0,),
                        Text("Pizza Recipes",style: AppWidget.lightfieldtextstyle(),)
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        ClipRRect
                        (borderRadius: BorderRadius.circular(10),
                          child: Image.asset("images/chinese.jpg",height: 120,width: 120,fit: BoxFit.cover,)),
                        SizedBox(height: 10.0,),
                        Text("Chinese Recipes",style: AppWidget.lightfieldtextstyle(),)
                      ],
                    ),
                  )
                ],
               ),
             ),
           ),
           SizedBox(height: 20,),
           Expanded(
             child: ListView(
              scrollDirection: Axis.horizontal,
               children: [
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect
                      (borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/burger.jpg",height: 300,width: 250,fit: BoxFit.cover,)),
                                SizedBox(height: 15,),
                        Text("Cheese Burger",style: AppWidget.boldfieldtextstyle(),)
                    ],
                  ),
                ),
                Container(
                   margin: EdgeInsets.only(right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect
                      (borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/pasta.jpg",height: 300,width: 250,fit: BoxFit.cover,)),
                          SizedBox(height: 15,),
                        Text("Red Sauce Pasta",style: AppWidget.boldfieldtextstyle(),)
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect
                      (borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/pavbhaji.jpg",height: 300,width: 250,fit: BoxFit.cover,)),
                        SizedBox(height: 15,),
                        Text("Butter Pavbhaji",style: AppWidget.boldfieldtextstyle(),)
                    ],
                  ),
                )
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}