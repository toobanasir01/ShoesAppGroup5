import "package:flutter/material.dart";
import 'package:shoeapp/model/shoe1.dart';

import '../common/card1.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});


  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Our Product",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [Text("Sort By"), Icon(Icons.sort)],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.6,
                    children: List.generate(products.length, (index){
                      Shoe productInfo = products[index];
                      return Card1(
                        productInfo1: productInfo,
                         );
                       },


                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
