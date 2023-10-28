import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokou/models/itemColor.dart';

import '../components/Colordata.dart';

class ColorPage extends StatelessWidget{
  List<ColorData> ListOfColor=[
    ColorData(
  text1: 'Kuro',
  text2: 'black',
  color: Colors.black),
    ColorData(
  text1: 'Chairo',
  text2: 'brown',
  color: Colors.brown),
    ColorData(
        text1: 'Hokori ppoi kiiro',
        text2: 'dusty yellow',
        color: Colors.yellowAccent),
    ColorData(
        text1: 'Gurē',
        text2: 'gray',
        color: Colors.grey),
    ColorData(
        text1: 'Midori',
        text2: 'green',
        color: Colors.green),
    ColorData(
        text1: 'Aka',
        text2: 'red',
        color: Colors.red),
    ColorData(
        text1: 'Shiroi',
        text2: 'White',
        color: Colors.white),
    ColorData(
        text1: 'Kiiro',
        text2: 'yellow',
        color: Colors.yellow), ColorData(
  text1: 'Kuro',
  text2: 'black',
  color: Colors.black),
    ColorData(
  text1: 'Chairo',
  text2: 'brown',
  color: Colors.brown),
    ColorData(
        text1: 'Hokori ppoi kiiro',
        text2: 'dusty yellow',
        color: Colors.yellowAccent),
    ColorData(
        text1: 'Gurē',
        text2: 'gray',
        color: Colors.grey),
    ColorData(
        text1: 'Midori',
        text2: 'green',
        color: Colors.green),
    ColorData(
        text1: 'Aka',
        text2: 'red',
        color: Colors.red),
    ColorData(
        text1: 'Shiroi',
        text2: 'White',
        color: Colors.white),
    ColorData(
        text1: 'Kiiro',
        text2: 'yellow',
        color: Colors.yellow),



  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
         backgroundColor: Colors.transparent,
       elevation: 0,
       flexibleSpace: Container(
         decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                // Colors.black,
                // Colors.brown,
                // Colors.yellow,
                // Colors.grey,
                // Colors.green,
                // Colors.red,
                // Colors.white,
                // Colors.yellow,
                 Color(0xffF9F7F7),
                 Color(0xffDBE2EF),
                 Color(0xff3F72AF),
                 Color(0xff112D4E),

              ],
            )
         ),
       ),
       toolbarHeight: 60,
     ),
     body: Column(
       children: [
          Expanded(
            child: ListView.builder(itemBuilder: (BuildContext context ,int index)=> ColorItem(cdata: ListOfColor[index],),
            itemCount: ListOfColor.length,
            ),
          ),
       ],
     ),
   );
  }

}