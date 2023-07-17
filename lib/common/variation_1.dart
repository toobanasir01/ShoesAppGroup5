import 'package:flutter/material.dart';
import 'package:shoeapp/screen/productDetails.dart';
class ColorVariation extends StatelessWidget {
  ColorVariation({super.key,required this.a});
  String a;

  List colors1 = [Colors.yellow,
    Colors.brown,
    Colors.black,
    Colors.white,
    Colors.blue];


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(a,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:Color(0xff3E45A9)) ,),
        SizedBox(height: 15,),
        Text("djfdhgfsgffhgdfhg",
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color:Color(0xff3E45A9))),
        SizedBox(height: 20,),
        Container(
          
          child: Row(children: [
            Text("Sizes:",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color:Color(0xff3E45A9)
            )
            ),
            for(int i=0; i < size_1.length; i++)
              Container(
                padding: EdgeInsets.only(left: 19,top: 2),
                margin: EdgeInsets.only(top: 5,left: 10),
                width: 50,height: 30,
                decoration: BoxDecoration(color: Colors.blue,
                    borderRadius: BorderRadius.circular(8)),
              child: Text(size_1[i],style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Color(0xff3E45A9)
              )),
              )



          ],),
        ),
    SizedBox(height: 20,),
    Row(
    children: [
      Text("Available Color:",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color:Color(0xff3E45A9))),
      SizedBox(width: 20,),
    Container(

      width: 25,
      height: 25,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: colors1[0]
    ),

    ),
      SizedBox(width: 15,),
    Container(

    width: 25,
    height: 25,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: colors1[1]
    ),

    ),
      SizedBox(width: 15,),
    Container(

      width: 25,
      height: 25,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: colors1[2]
    ),

    ),
      SizedBox(width: 15,),
    Container(

      width: 25,
      height: 25,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: colors1[3]
    ),

    ),
      SizedBox(width: 15,),
    Container(

        width: 25,
        height: 25,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: colors1[4]





    ))])]);}
}
