import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokou/components/dataFamily.dart';
class ItemFamily extends StatelessWidget{
  const ItemFamily({super.key, required this.aya});
  final FamilyData aya;
  @override
  Widget build(BuildContext context) {
   return  Container(
     color: Colors.green,
     child: Row(
       children: [
         Container(
           width: 90,
           color: Color(0xffFFF4DB),
           child: Image(image: AssetImage("${aya.image}"),),
         ),
         Text("\t\t${aya.text1}\n\t\t${aya.text2}",
           style: TextStyle(
             fontSize: 18,
             color: Color(0xffFFEBBC),
           ),
         ),
         Spacer(),
         IconButton(
           padding: EdgeInsets.only(right: 20),
           onPressed: () {
             final Player =AudioPlayer();
             Player.play(AssetSource("grand mother.wav"));
           },
           icon: Icon(Icons.play_arrow,
             size: 40,
             color: Color(0xffFFEBBC),
           ),

         ),
       ],
     ),
   );
  }

}