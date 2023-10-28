import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Category extends StatelessWidget{
  final   String data;
  final   Color color;
  final   Function() onTap; //Function == VoidCallback
  final String image;
  Category(
      {
        required this.data,
        required this.color,
        required this.onTap,
        required this.image,
      }
      );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 10,left: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: color,
          ),
          alignment: Alignment.center,
          //width: double.infinity,
          height:160,
         // color: color,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12,left: 12, top: 10,bottom: 5),
                child: Text(data,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:  Image(image: AssetImage("$image",
                ),
                height: 100,
                  width: 160,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }

}