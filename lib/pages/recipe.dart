import 'package:flutter/material.dart';
import 'package:recipe_app/widget/support_widget.dart';

class Recipe extends StatefulWidget {
  const Recipe({super.key});

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset("images/pasta.jpg",width: MediaQuery.of(context).size.width,height: 400,fit: BoxFit.cover,),
              Container(
                padding: EdgeInsets.only(left: 30,top: 40,right: 30,bottom: 30),
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.width/1.5 ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Red Sauce Pasta",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                  Divider(color: Colors.teal,thickness: 2,),
                  SizedBox(height: 15,),
                  Text("About Recipe",style: AppWidget.boldfieldtextstyle(),),
                  SizedBox(height: 10,),
                  Text("Step 1 : Prepare the red sauce and boil the pastaHeat oil in a pan over medium flame and add minced garlic along with chopped red chilli and red chilli flakes. Stir and saute for 2 minutes. Take another pan, pour the water and bring it to a boil. Then, add pasta to the boiling water along with some salt and 1/2 tbsp oil. Cook the pasta for a few minutes. When it is cooked through, drain the extra water and transfer the pasta to another bowl.",style:AppWidget.lightfieldtextstyle() ,),
                    SizedBox(height: 10,),
                 Text("Step 2 : Cook tomatoes along with herbs for 10-12 minutes Now, heat the olive oil and add the peeled (or pureed) tomatoes, basil and parsley to the pan. Mix all the ingredients well and let it simmer for 10 minutes until the sauce starts to thicken. When the sauce starts gaining consistency, put off the burner and add salt and black pepper powder to the sauce. Keep the sauce warm. Add the pasta over the warm sauce and toss carefully so that each piece is coated with the sauce.",style:AppWidget.lightfieldtextstyle()),
                      SizedBox(height: 10,),
                  Text("Step 3  : Pasta is ready to relish Cook for 2-3 minutes more and then serve the Red Sauce Pasta immediately. To make it more aromatic, you can dry roast a few basil leaves, crush them with some chilli flakes, oregano and add it to the dish. This herb fusion will make your pasta even more delectable. Serve it with garlic bread and relish this delicious pasta.",style:AppWidget.lightfieldtextstyle(),),
                 ],
               ),
              )
            ],
          ),
        ),
      ),
    );
  }
}