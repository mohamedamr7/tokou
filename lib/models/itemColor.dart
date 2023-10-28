import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokou/components/Colordata.dart';
class ColorItem extends StatelessWidget{
  const ColorItem({super.key, required this.cdata});
  final ColorData cdata;
  @override
  Widget build(BuildContext context) {
    return   Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //       colors: [
      //         Color(0xff190482),
      //         Color(0xff7752FE),
      //         Color(0xff8E8FFA),
      //         Color(0xffC2D9FF),
      //       ]
      //   ),
      // ),
      color: const Color(0xff7C3FA1),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              color: cdata.color,
            ),
            width: 90,
            height: 80,
          ),
          Text("\t\t${cdata.text1}\n\t\t${cdata.text2} ",
            style: TextStyle(
              fontSize: 18,
              color: cdata.color,
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
              color: Colors.white,
            ),

          ),

        ],
      ),
    );
  }

}