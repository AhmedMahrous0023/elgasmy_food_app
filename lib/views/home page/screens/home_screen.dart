import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .24,
            child: Stack(
              children: [
                Image.asset(
                  "images/lnn-health-july-2021_-5-food-trends.jpg",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 8,
                  top: 115,
                  child: Row(
                    children: [
                      Text("El",style: TextStyle(color: Colors.white,fontSize: 21),),
                                      Text("GAS",style: TextStyle(color: Colors.yellow,fontSize: 21),),
                                      Text("MY  ",style: TextStyle(color: Colors.pink,fontSize: 21),),
                                      Text("Foods",style: TextStyle(color: Colors.white,fontSize: 21),)
                  
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
