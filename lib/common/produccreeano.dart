import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:Icon(Icons.home,
          ) ,
              label: 'home',backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(icon:Icon(Icons.home,   ) ,

              label: 'home',backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(icon:Icon(Icons.home,  ) ,

              label: 'home',backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(icon:Icon(Icons.home, ) ,

              label: 'home',backgroundColor: Colors.blueGrey),
        ],
      ),
      backgroundColor: Colors.grey[600],
      appBar: AppBar(

          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu),
          title:Center(child: Text('Home')),
          actions:<Widget>[
            Padding(padding: EdgeInsets.all(10.0),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('0',style: TextStyle(color: Colors.white),)),
              ),
            ),
          ]


      ),
      body: SafeArea(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(

            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/shoes2.jpg'),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.1),
                        Colors.black.withOpacity(.1),
                      ]
                      )
                  ),

                  child: Column(
                    children: <Widget> [
                      Center(
                        child: Text('Summer Sale 50% oFF',
                          style: TextStyle(color: Colors.white,fontSize: 33,fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text('Order Now',
                            style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold,fontSize: 25,),),
                        ),
                      ),
                      SizedBox(height: 30,),


                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Chip(label: Text('See All'),),
              SizedBox(height: 10,),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                  (crossAxisCount: 2,crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                  padding: EdgeInsets.all(10),
                  children: [
                    Container(
                      child:SizedBox(
                    child: Card(
                    elevation: 10,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Image(image: AssetImage("assets/shoe1.png"),),
                ),
                )


                    ),

                    Image(image: AssetImage('assets/shoe1.png'),),

                    Image(image: AssetImage('assets/shoe1.png'),),
                    Image(image: AssetImage('assets/shoe1.png'),),
                    Image(image: AssetImage('assets/shoe1.png'),),
                    Image(image: AssetImage('assets/shoe1.png'),),
                    Image(image: AssetImage('assets/shoe1.png'),),




                  ],
                ),
              ),

            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}