import 'package:flutter/material.dart';
import 'package:gasmy_food_app/views/home%20page/screens/home_screen.dart';

class MyBottomNavigatorBarScreen extends StatefulWidget {
  const MyBottomNavigatorBarScreen({super.key});

  @override
  State<MyBottomNavigatorBarScreen> createState() => _MyBottomNavigatorBarScreenState();
}

class _MyBottomNavigatorBarScreenState extends State<MyBottomNavigatorBarScreen> {
 int _currentindex = 0;
 List<Widget>_taps=[
  HomeScreen(),
    HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),

 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _taps[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _currentindex=index ;
          });
        },
        backgroundColor: Colors.white,
        currentIndex: _currentindex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 25),label: "Home"),
                    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,size: 25),label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel_sharp,size: 25),label: "Bag"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,size: 25),label: "Favourites"),
                    BottomNavigationBarItem(icon: Icon(Icons.person_3_outlined,size: 25),label: "Profile"),
        ]),
        
    );
  }
}