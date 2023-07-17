import 'package:flutter/material.dart';
import 'package:shoeapp/common/carrd2.dart';



class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({
    super.key,
    required this.price,
    required this.Image,
    required this.Tittle,

    });
  String Image,Tittle;
  int price;

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}
class _CheckoutScreenState extends State<CheckoutScreen> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("jh"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))

        ],
      ),


      body: SafeArea(

        child: SizedBox(
        width: size.width,
        height: size.height,
        child: Card2(
          productTittle: widget.Tittle,
          productPrice: widget.price,
          productImage: widget.Image,
        ))
        )





    );
  }
}



