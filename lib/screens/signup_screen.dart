import 'package:ecommerce_shopping/screens/home_screen.dart';
import 'package:ecommerce_shopping/screens/login_screen.dart';
import 'package:ecommerce_shopping/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Image.asset("images/freed.png"),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Name",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter Number",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.numbers),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Enter  Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Confirm  Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomeScreen(),
                              ));
                        },
                        child: Text(
                          "Create Account",style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(55),
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("OR"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                            style: TextStyle(fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          TextButton(onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => LoginScreen(),
                                ));
                          }, child: Text("Log in",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),)),
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
