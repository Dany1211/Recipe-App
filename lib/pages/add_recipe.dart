import 'package:flutter/material.dart';
import 'package:recipe_app/widget/support_widget.dart';

class AddRecipe extends StatefulWidget {
  const AddRecipe({super.key});

  @override
  State<AddRecipe> createState() => _AddRecipeState();
}

class _AddRecipeState extends State<AddRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Add Recipe",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold ) ),
                ],
              ),
              SizedBox(height: 30,),
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.teal)),
                child: Icon(Icons.camera_alt_outlined,size: 50,color: Colors.teal,),
              ),
            ),
            SizedBox(height: 20,),
            Text("Recipe Name",style: AppWidget.boldfieldtextstyle(),),
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.only(left: 15),
              width: MediaQuery.of(context).size.width,
              decoration:BoxDecoration(color: Colors.teal.shade100,borderRadius: BorderRadius.circular(20)) ,
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none,hintText: "Enter the recipe name",hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black38)),
              ),
            ),
            SizedBox(height: 20,),
            Text("Recipe Details",style: AppWidget.boldfieldtextstyle(),),
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.only(left: 15),
              width: MediaQuery.of(context).size.width,
              decoration:BoxDecoration(color: Colors.teal.shade100,borderRadius: BorderRadius.circular(20)) ,
              child: TextField(
                maxLines: 12,
                decoration: InputDecoration(border: InputBorder.none,hintText: "Enter the recipe details",hintStyle:TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black38) ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 10),
              decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width,
              child: Center(child: Text("UPLOAD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
            )
            ],
          ),
        ),
      ),
    );
  }
}