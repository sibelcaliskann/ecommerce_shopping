import 'package:ecommerce_shopping/screens/navigation_screen.dart';
import 'package:ecommerce_shopping/widgets/container_button.dart';
import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset("images/succes.png",
                height: 200,
              ),
              SizedBox(height: 20,),
              Text("Success!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
              ),
              SizedBox(height: 15,),
              Text("Your order will be delivered soon.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,

                ),),
              Text("Thank you! For choosing our app.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigationScreen(),
                ));
              },
              child: ContainerButtonModel(
                itext: "Continue Shoopping",
                containerWidth: MediaQuery.of(context).size.width,
                bgColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
