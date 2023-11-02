import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quizapp_7/utils/Database/database.dart';
import 'package:quizapp_7/view/end_screen/end_screen.dart';

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int value=0;
  int? checkvalue;
  void counter(){
    value = value + 1;
    setState(() {
      
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: Text("${value+1}/${Database.mydata.length}",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 200, 10, 238),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          children: [
          SizedBox(height: 20,),
          Center(child: Text(Database.mydata[value]["questions"],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
          SizedBox(height: 40,),
          ListView.separated(
            shrinkWrap:true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder:(context, index) => InkWell(
              onTap: () {
              checkvalue=index;
              setState(() {
                
              });
              },
              child: SizedBox(height: 60,
                child: Card(color: checkvalue==index ? checkvalue==Database.mydata[value]['answer']?Color.fromARGB(255, 2, 255, 10):Color.fromARGB(255, 253, 19, 2):Color.fromARGB(255, 183, 255, 1),
              
                
                child: Center(child: Text(Database.mydata[value]["options"][index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                elevation: 50,
                shadowColor: Color.fromARGB(255, 12, 118, 239),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                ),
              ),
            ), 
           separatorBuilder: (context, index) => SizedBox(height: 40,), itemCount:4),
         
            
           SizedBox(height: 80,),
          
         InkWell(onTap: () {
           
             checkvalue=5;
             
             setState(() {
               
             });
             value+1==Database.mydata.length ? 
               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => 
             
          EndScreen()
             
             ), (route) => false) :  counter();
           
         },
           child: Container(height: 40,width: 80,
             child: Center(child: Text("Next",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
             
             ),
             decoration: BoxDecoration(gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 217, 255),
              Color.fromARGB(255, 245, 9, 221),
              Color.fromARGB(255, 1, 133, 249),
              Color.fromARGB(255, 182, 1, 254),
             ],begin:Alignment.bottomCenter,end:Alignment.topCenter ),
             borderRadius: BorderRadiusDirectional.circular(14)
             ),
             
   
           ),
         )
        ],),
      )
    );
  }
}
