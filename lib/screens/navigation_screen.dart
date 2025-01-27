import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommerce_shopping/screens/cart_screen.dart';
import 'package:ecommerce_shopping/screens/favorites_screen.dart';
import 'package:ecommerce_shopping/screens/home_screen.dart';
import 'package:ecommerce_shopping/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

 int pageIndex= 0;
 List<Widget> pages=[
   HomeScreen(),
   CartScreen(),
   FavoritesScreen(),
   ProfileScreen(),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: (){

          },
          child: Icon(
            Icons.qr_code,
            size: 20,
          ),
          backgroundColor: Colors.red,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        //splashColor: ,
        inactiveColor: Colors.black.withOpacity(0.5),
        activeColor: Colors.red,
        gapLocation: GapLocation.center,
        activeIndex: pageIndex,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        elevation: 0,
        onTap: (index){
          setState(() {
            pageIndex=index;
          });
        },
      ),
    );
  }
}
