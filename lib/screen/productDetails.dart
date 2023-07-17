import 'package:flutter/material.dart';
import 'package:shoeapp/common/variation_1.dart';

import 'package:shoeapp/screen/checkout_Screen.dart';



class ProductDetails extends StatefulWidget {

  ProductDetails({super.key,required this.productImage1,required this.productTittle1,required this.productPrice1});
  String productImage1,productTittle1;
  int productPrice1;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}
List size_1 = ["6","7","8","9"];


class _ProductDetailsState extends State<ProductDetails> {
  TextEditingController price = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xffFFFFFF),
      body:SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: size.width,
            height: size.height,

            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Stack(
                    children:[
                      Positioned(
                          top: size.height*0.1,left: size.width*0.2,
                          child: Center(child: Image(image: AssetImage(widget.productImage1),))),

                  Positioned(
                      top: size.height*0.5,
                      child: Column(


                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
                            decoration: BoxDecoration(
                            color: const Color(0xffd5d2d3),
                            borderRadius: BorderRadius.circular(40)),
                            width: size.width,
                            height: size.height,
                            child:ColorVariation(
                              a: widget.productTittle1,
                            )

                            
                          ),


                      ],)),
                  Positioned(
                      top: size.height*0.82,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 35),

                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        width: size.width,height: size.height*0.3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text(
                            "${widget.productPrice1}",
                            style:const TextStyle(
                                fontSize: 30) ,),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                 builder: (context)=> CheckoutScreen(
                                price: widget.productPrice1,
                                Image: widget.productImage1,
                                Tittle: widget.productTittle1)));


                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart(
                            //   price: widget.productPrice1,
                            //
                            // )));
                          }, child: const Text("My Cart"))
                        ],),)),

                    ]),

                ),



              ],
            ),
          ),
        ),
      )
    );
  }
}
