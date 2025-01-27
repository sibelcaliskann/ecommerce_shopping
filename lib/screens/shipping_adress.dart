import 'package:ecommerce_shopping/screens/confirm_screen.dart';
import 'package:ecommerce_shopping/widgets/container_button.dart';
import 'package:flutter/material.dart';
class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Shipping Address"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Full Name",
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Mobile Number",
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Address",
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "City",
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "State/Province/Region",
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Zip Code(Postal Code)",
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Country",
                  ),
                ),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderConfirmScreen(),
                    ));
                  },
                  child: ContainerButtonModel(itext: "Add Address",
                  containerWidth: MediaQuery.of(context).size.width,
                    bgColor: Colors.red,
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
