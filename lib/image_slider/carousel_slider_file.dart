import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderFileScreen extends StatefulWidget {
  const CarouselSliderFileScreen({super.key});

  @override
  State<CarouselSliderFileScreen> createState() =>
      _CarouselSliderFileScreenState();
}

class _CarouselSliderFileScreenState extends State<CarouselSliderFileScreen> {

  List addImagesList = [
    "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1zwhySGCEBxRRFYIcQgvOLOpRGqrT3d7Qng&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQykzoZeCE0p7LeuyHnLYCdPP2jju9d5PaMeA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl37Ha8cXj2c-sdAN1bfoPl31dXDgypc55Kw&s",
    "https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Screen", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),

      body: Column(
        children: [
          SizedBox(height: 10,),
       CarouselSlider(

           items: addImagesList.map((e){
         return Container(

           margin: EdgeInsets.symmetric(horizontal: 5.0),
           decoration: BoxDecoration(

             borderRadius: BorderRadius.circular(40),

             image: DecorationImage(
                 fit: BoxFit.fill,
                 image: NetworkImage(e))
           ),

         );
       }).toList(), options: CarouselOptions(
         autoPlay: false,
       
         enlargeCenterPage: true,

       ))
        ],
      ),


    );
  }
}
