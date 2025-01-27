import 'package:ecommerce_shopping/screens/shipping_adress.dart';
import 'package:ecommerce_shopping/widgets/container_button.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  
  int _type=1;

  void _handleRadio(Object? e) => setState(() {
    _type = e as int;
  });
  
  @override
  void initState(){
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 1
                      ? Border.all(width: 1,color: Colors.red)
                      : Border.all(width: 0.3,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(value: 1, groupValue: _type, onChanged: _handleRadio,
                                activeColor: Colors.black,
                                ),
                                Text("Amazon Pay",
                                style: _type == 1
                                    ? TextStyle(fontSize: 15,
                                     fontWeight: FontWeight.w500,
                                    color: Colors.red)
                                    : TextStyle(fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey)
                                ),
        
                              ],
                            ),
                            Image.asset("images/amazon2.jpg",
                              width: 70,
                              height: 50,
                              //fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 2
                          ? Border.all(width: 1,color: Colors.red)
                          : Border.all(width: 0.3,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(value: 2, groupValue: _type, onChanged: _handleRadio,
                                  activeColor: Colors.black,
                                ),
                                Text("Credit Card",
                                    style: _type == 2
                                        ? TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red)
                                        : TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey)
                                ),
        
                              ],
                            ),
                            Image.asset("images/visa.png",
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
        
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 3
                          ? Border.all(width: 1,color: Colors.red)
                          : Border.all(width: 0.3,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: Colors.black,
                                ),
                                Text("Credit Card",
                                    style: _type == 3
                                        ? TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red)
                                        : TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey)
                                ),
                              ],
                            ),
                            Image.asset("images/master.jpg",
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
        
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 4
                          ? Border.all(width: 1,color: Colors.red)
                          : Border.all(width: 0.3,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(value: 4, groupValue: _type, onChanged: _handleRadio,
                                  activeColor: Colors.black,
                                ),
                                Text("Google Pay",
                                    style: _type == 4
                                        ? TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red)
                                        : TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey)
                                ),
        
                              ],
                            ),
                            Image.asset(
                              "images/icon2.png",
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
        
                  ),
                  SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub-Total",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "\$1100",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
        
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping Free",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "\$15",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                Divider(
                  height: 20,
                  color: Colors.black,
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "\$1085",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ShippingAddress(),));
                    },
                    child: ContainerButtonModel(
                      itext: "Confirm Payment",
                      containerWidth: size.width,
                      bgColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
