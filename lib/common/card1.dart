import 'package:flutter/material.dart';

import '../model/shoe1.dart';

class Card1 extends StatefulWidget {
  Card1({super.key, required this.productInfo});
  Shoe productInfo;

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.5,
      height: size.height * 0.45,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(12),
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffA5DCF4),
                  ),
                  child: const Center(
                    child: Text(
                      "",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(12),
                  child: const Icon(Icons.favorite),
                )
              ],
            ),
            Stack(children: [
              Container(
                  margin: const EdgeInsets.all(18),
                  height: 130,
                  width: 130,
                  child: const CircleAvatar(
                    backgroundColor: Color(0xffFDE0CE),
                    radius: 5,
                    child: SizedBox(
                      height: 125,
                      width: 125,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            height: 120,
                            width: 120,
                            child: CircleAvatar(
                                backgroundColor: Color(0xffFDE0CE)),
                          )),
                    ),
                  )),
              Container(
                  width: 140,
                  height: 130,
                  margin: const EdgeInsets.only(top: 25, left: 30),
                  child:
                      Image(image: AssetImage(widget.productInfo.productImage)))
            ]),
            Title(
                color: const Color.fromARGB(255, 1, 40, 71),
                child: Text(
                  widget.productInfo.productTittle,
                  style: const TextStyle(
                      color: Color(0xff3E45A9),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 5,
            ),
            Title(
                color: const Color.fromARGB(255, 1, 40, 71),
                child: Text(
                  "\$${widget.productInfo.productPrice}",
                  style: const TextStyle(
                      color: Color(0xff3E45A9),
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ))
          ],
        ),
      ),
    );
  }
}
