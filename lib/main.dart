

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              FloatingActionButton(onPressed: () {},
                backgroundColor: Colors.brown,
                hoverColor: Colors.amber,
                child: const Icon(Icons.subject),
              )
            ],
          ),
          title:  const Text("Uni Point Coffee", style: TextStyle(fontSize: 19.0, fontStyle: FontStyle.italic, color: Colors.white, wordSpacing: 2.3),),
          centerTitle: true,
          backgroundColor: Colors.brown, 
        ),
        // ignore: prefer_const_constructors
       body: Body(),
       floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.brown,
        splashColor: Colors.white,
        hoverColor: Colors.brown,
        child: const Icon(Icons.search,),
       ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _Body();
}

class _Body extends State<Body> {
  List<String> imageList  = [
    
    "https://www.shutterstock.com/image-photo/portrait-joyful-young-woman-enjoying-cup-2003674928"
    // "assets/images/latte.png"

    

    
  ];
  
 




  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        SizedBox(
          height: 300.0,), 
          CarouselSlider(items: imageList.map((e) => ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(e,
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
                ),
                Text(e,)
              ],
            ),
          )).toList(), options: CarouselOptions(
            autoPlay: true,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            height: 190.0, 
            
          ))
      ],
    );
  }


}