import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokou/Screen/Color_page.dart';
import 'package:tokou/Screen/Family_Members.dart';
import 'package:tokou/Screen/Number.dart';
import 'package:tokou/Screen/Phrase_Page.dart';
import '../components/catrgory.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFCE3),
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text("Tokyo"),
      ),
      body: Column(
        children:
        [
          Category(
            color: const Color(0xffF89430),
            data: 'Members',
            onTap:(){
            Navigator.push(context, MaterialPageRoute(builder:
            (context) =>Number_page(),
            )
            );
          },
          ),
          Category(
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
          Category(
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
          Category(
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
        ],
      ),
    );
  }
}

