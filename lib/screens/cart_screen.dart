import 'package:ecommerce_shopping/screens/payment_method_screen.dart';
import 'package:ecommerce_shopping/widgets/container_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  List imageList = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];

  List productTitles = [
    "Warm Zipper",
    "Knitted Woo!",
    "Zipper Win",
    "Child Win",
  ];

  List prices =[
    "\$300",
    "\$650",
    "\$50",
    "\$100",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Cart"),
       leading: BackButton(),
       backgroundColor: Colors.transparent,
       foregroundColor: Colors.black,
       elevation: 0,
       centerTitle: true,
     ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
              child: ListView.builder(
                itemCount: imageList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            activeColor: Colors.red,
                            value: true,
                            onChanged: (val) {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imageList[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitles[index],
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Hooded Jacket",
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 16,
                              ),),
                              SizedBox(height: 10,),
                              Text(
                                prices[index],
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                color: Colors.green,
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Icon(
                                CupertinoIcons.plus,
                              color: Colors.red,),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  Checkbox(
                    splashRadius: 20,
                    activeColor: Colors.red,
                    value: false,
                    onChanged: (val) {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Payment",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text("\$1100",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodScreen(),
                  ));
                },

                child: ContainerButtonModel(
                  itext: "Check Out",
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: Colors.red,
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
