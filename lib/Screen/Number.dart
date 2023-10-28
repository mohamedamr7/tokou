import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokou/models/item%20number.dart';
import '../components/dataNumber.dart';
class Number_page extends StatelessWidget{
  final List<Number> numbers=[
   Number(
     text1: "ichi" ,
     text2: "one",
     image: "assets/images/numbers/number_one.png",
     song: "assets/sounds/family_members/older bother.wav",
   ),
   Number(
     text1: "Ni" ,
     text2: "Two",
     image: "assets/images/numbers/number_two.png",
     song: "sounds/family_members/older bother.wav",
   ),
   Number(
     text1: "San" ,
     text2: "Three",
     image: "assets/images/numbers/number_three.png",
     song: "assets/sounds/family_members/older bother.wav",

   ),
   Number(
     text1: "Shi" ,
     text2: "four",
     image: "assets/images/numbers/number_four.png",
     song: "assets/sounds/family_members/older bother.wav",

   ),
   Number(
     text1: "GO" ,
     text2: "five",
     image: "assets/images/numbers/number_five.png",
     song: "assets/sounds/family_members/older bother.wav",

   ),
   Number(
     text1: "Roku" ,
     text2: "six",
     image: "assets/images/numbers/number_six.png",
     song: "assets/sounds/family_members/older bother.wav",
   ),
   Number(
     text1: "Sebun" ,
     text2: "seven",
     image: "assets/images/numbers/number_seven.png",
     song: "assets/sounds/family_members/older bother.wav",

   ),
   Number(
     text1: "hachi" ,
     text2: "eight",
     image: "assets/images/numbers/number_eight.png",
     song: "assets/sounds/family_members/older bother.wav",

   ),
   Number(
     text1: "ku" ,
     text2: "nine",
     image: "assets/images/numbers/number_nine.png",
     song: "assets/sounds/family_members/older bother.wav",

   ),
   Number(
     text1: "ju" ,
     text2: "ten",
     image: "assets/images/numbers/number_ten.png",
     song: "assets/sounds/family_members/older bother.wav",

   ),
 ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:  AppBar(
       backgroundColor: Color(0xff452F24),
       title: Text("Numbers",
         style: TextStyle(
           color: Colors.white,
           fontSize: 20,
         ),
       ),
     ),
     body: Column(
       children: [
         Expanded(
           child: ListView.builder(
             itemBuilder: (BuildContext context, int index) {
              return Item(number: numbers[index]);
             },
             itemCount: numbers.length,

           ),
         )
       ],
     ),
   );
  }
}

// List<Widget> getList(List<Number> numbers){
//   List<Item> itemsList=[];
//   for(int i=0;i<numbers.length;i++)
//     {
//       itemsList.add(Item(number: numbers[i]));
//     }
//   return itemsList;
// }