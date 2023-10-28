import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokou/models/itemfamily.dart';
import 'package:tokou/components/dataFamily.dart';
class Family extends StatelessWidget{
  List<FamilyData> aboyousef=[
     FamilyData(
     text1: "Otōsan",
     text2: "father",
     image: "assets/images/family_members/family_father.png",
   ),
     FamilyData(
       text1: "Hahaoya",
       text2: "mother",
       image: "assets/images/family_members/family_mother.png",
     ),
     FamilyData(
       text1: "Musuko",
       text2: "son",
       image: "assets/images/family_members/family_son.png",
     ),
     FamilyData(
       text1: "Musume",
       text2: "daughter",
       image: "assets/images/family_members/family_daughter.png",
     ),
     FamilyData(
       text1: "Ojīsan",
       text2: "grand father",
       image: "assets/images/family_members/family_grandfather.png",
     ),
     FamilyData(
       text1: "Sobo",
       text2: "grand mother",
       image: "assets/images/family_members/family_grandmother.png",
     ),
     FamilyData(
       text1: "Nīsan",
       text2: "older brother",
       image: "assets/images/family_members/family_older_brother.png",
     ),
     FamilyData(
       text1: "Onēsan",
       text2: "older sister",
       image: "assets/images/family_members/family_older_sister.png",
     ),
     FamilyData(
       text1: "Otōto",
       text2: "younger brother",
       image: "assets/images/family_members/family_younger_brother.png",
     ),
     FamilyData(
       text1: "Imōto",
       text2: "younger sister",
       image: "assets/images/family_members/family_younger_sister.png",
     ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0xff452F24),
        title: Text("Family Member",
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
                itemBuilder:(BuildContext context, int index){
                  return ItemFamily(aya:aboyousef[index],);
                },
              itemCount: aboyousef.length,

            ),
          ),
        ],
      ),
    );


  }

}