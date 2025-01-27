import 'package:ecommerce_shopping/screens/home_screen.dart';
import 'package:ecommerce_shopping/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introKey= GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration= PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          image: Image.asset("images/splash1.png", width: 200,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          image: Image.asset("images/splash2.png", width: 200,),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Delivery",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
          image: Image.asset("images/splash3.png", width: 200,),
          decoration: pageDecoration,
          footer: Padding(
            padding: EdgeInsets.only(left: 15,right: 15),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen(),
                ));
              },
              child: Text(
                  "Let's Shop",style: TextStyle(
                fontSize: 18,
              ),),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(55),
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
              ),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text("Back",style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.red,
      ),),
      next: Text("Next", style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.red,
      ),),

      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20,10),
        activeColor: Colors.red,
          color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      )),

    );
  }
}
