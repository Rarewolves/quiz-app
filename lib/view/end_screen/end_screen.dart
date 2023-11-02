import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
   EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [
          Color.fromARGB(255, 3, 255, 230),
            Color.fromARGB(255, 163, 250, 2),
              Color.fromARGB(255, 211, 1, 249),
                Color.fromARGB(255, 250, 3, 155),
          
        ],begin: Alignment.topRight,end: Alignment.topLeft)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: 250,),
           Center(child: Text("Mark : 5/5",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),)),
           SizedBox(height: 50,),
           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
     
            Image.asset("assets/images/smiling-face.png",scale: 12,),
            Image.asset("assets/images/smiling-face.png",scale: 12,),
            Image.asset("assets/images/smiling-face.png",scale: 12,),
            Image.asset("assets/images/smiling-face.png",scale: 12,),
            Image.asset("assets/images/smiling-face.png",scale: 12,),
           ],),
          SizedBox(height: 50,),
          Center(child: Text("Congratulations",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
           SizedBox(height: 50,),
           Image.asset('assets/images/100-percent.png',scale: 4,)

        ],),
      ),
    );
  }
}