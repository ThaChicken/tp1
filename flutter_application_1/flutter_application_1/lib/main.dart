// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
Padding iconsBas(IconData iconz) { 
return  Padding(padding: EdgeInsets.only(top: 30, left: 60), child: Icon( iconz, color: Colors.white, size: 60), );
}
Padding texties(String text, Color couleur){
  return Padding(padding: EdgeInsets.only(top: 25, left:15, right:15, bottom:10 ), child: Text("Recommended", style: TextStyle(color:Colors.white, fontSize: 17), ),);
}


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
       leading: Icon(Icons.home),
       title: Text("Allons magasiner!"),
       actions: [Icon(Icons.shopping_cart), Text("        ")],
       
       

      ),
      body: Column(
        children: [Row(
          children: [
            texties("Recommended", Colors.white),
            texties("Formal Wear", Colors.grey),
            texties("Casual Wear", Colors.grey),
          ],
        ),
        Image(image: AssetImage("assets/Eat the Rich.png"), width: 380,),
        SizedBox(
          child: Row(
            children: [
              Padding( padding: EdgeInsets.all(5), child: Container(width: 195, padding: EdgeInsets.only(top:25, bottom: 25, right: 40, left: 40), decoration: ShapeDecoration(color: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)) )), 
              child: Text("Best Sellers", textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 20)))),
             Padding( padding: EdgeInsets.all(5), child: Container(width: 195, padding: EdgeInsets.only(top:25, bottom: 25, right: 40, left: 40), decoration: ShapeDecoration(color: Colors.blue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)) )),
              child: Text("Daily Deals", textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 20)),))
            ],
          ),
        ),
         SizedBox(
          child: Row(
            children: [
              Padding( padding: EdgeInsets.all(5), child: Container(width: 195, padding: EdgeInsets.only(top:15, bottom: 15, right: 40, left: 40), decoration: ShapeDecoration(color: Colors.green, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)) )),
              child: Text("Must buy in summer", textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 20)),)),
              Padding( padding: EdgeInsets.all(5), child: Container(width: 195, padding: EdgeInsets.only(top:25, bottom: 25, right: 40, left: 40), decoration: ShapeDecoration(color: Colors.red, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)) )),
              child: Text("Last Chance", textAlign: TextAlign.center, style: TextStyle(color:Colors.white, fontSize: 20)),))
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              iconsBas(Icons.print),
              iconsBas(Icons.delivery_dining),
              iconsBas(Icons.location_city),
            ],
          ),
        )
        ],
      ),
        
    );
  }
}
