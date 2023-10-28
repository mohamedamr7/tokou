import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokou/Screen/Color_page.dart';
import 'package:tokou/Screen/Family_Members.dart';
import 'package:tokou/Screen/Number.dart';
import 'package:tokou/Screen/Phrase_Page.dart';
import '../models/catrgory.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(
          child:
          ShaderMask(
            shaderCallback:(bounds) => LinearGradient(colors: [
              Color(0xff222831),
              Color(0xff393E46),
              Color(0xff00ADB5),
              Color(0xffEEEEEE),
            ]).createShader(bounds,) ,
          child: const Text("Tokyo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff222831),
              Color(0xff393E46),
              Color(0xff00ADB5),
              Color(0xffEEEEEE),
            ],
           // stops: [0.5,0.8,0.12,0.15],
            begin:Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children:
          [

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(image: AssetImage("assets/images/learning.jpeg"))),
            ),
            Spacer(),
            Row(
              children: [
               Expanded (
                  child: Category(
                    image: "assets/images/numbers/number (2).jpeg" ,
                    color: const Color(0xffF89430),
                    data: 'Numbers',
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) =>Number_page(),
                      )
                      );
                    },
                  ),
                ),
               Expanded (
                  child: Category(
                    image: "assets/images/familyMember.png",
                    color: const Color(0xff517F30),
                    data: 'Family Members',
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Family();
                      }
                      )
                      );
                    },
                  ),
                ),
              ],
            ),
           SizedBox(height: 20,),
           Row(
             children: [
               Expanded(
                 child: Category(
                   image: "assets/images/OIP.jpeg",
                   color: const Color(0xff7C3FA1),
                   data: 'Colors',
                   onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return ColorPage();
                     }
                     )
                     );
                   },
                 ),
               ),
               SizedBox(width: 15),
               Expanded(
                 child: Category(
                   image: "assets/images/Pharse.jpeg",
                   color: const Color(0xff46A4CA),
                   data: 'Phrases',
                   onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return PhrasePage();
                     }
                     )
                     );
                   },
                 ),
               ),
             ],
           ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}

