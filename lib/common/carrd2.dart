import 'package:flutter/material.dart';
class Card2 extends StatefulWidget {
  Card2({super.key,
    required this.productImage,required this.productPrice,required this.productTittle,});
  String productImage,productTittle;
  int productPrice;


  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  int count = 0;
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context,index){

                return SizedBox(
                  width: size.width,
                  height: size.height*0.2,
                  child: Card(
                      margin: EdgeInsets.all(12),
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            width: size.width*0.3,
                            height: size.height,
                            child: CircleAvatar(
                              child: Image(image: AssetImage(widget.productImage)),
                            ),
                          ),
                          Expanded(
                            child: Container(

                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(child: Text(widget.productTittle,
                                    style: TextStyle(fontSize: 20),)),

                                  SizedBox(height: 15,),
                                  Container(

                                    child: Text("${widget.productPrice}",
                                        style: TextStyle(fontSize: 20)),)
                                ],
                              ),
                            ),
                          ),


                          Container(
                            padding: EdgeInsets.only( top: 10,bottom: 10),
                            margin: EdgeInsets.only(left: 10,right: 10),
                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    setState(() {
                                      if(count>1)
                                        count--;
                                    });

                                  },

                                  child: CircleAvatar(

                                      child: Icon(Icons.minimize)),
                                ),



                                Text("$count"),
                                GestureDetector(onTap: (){
                                  setState(() {
                                    if(count<=9)
                                      count++;
                                  });
                                },

                                  child:  CircleAvatar(child: Icon(Icons.add)),),

                              ],),
                          )

                        ],
                      )
                  ),
                );
              }, separatorBuilder: (context,index){
            return Card();
          },
              itemCount: 1),
        ),

        Container(
          width: size.width,
          height: size.height*0.1,
          color: Colors.blue,
          child: Row(
            children: [
              Text("Total ${widget.productPrice*count}",)
            ],
          ),


        )



        ,
      ],
    );
  }
}
