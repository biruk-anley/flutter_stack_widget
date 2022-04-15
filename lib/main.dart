import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack widget'),
        centerTitle: true,
        elevation: 12.0,
      ),
      body: Container(  
            padding: EdgeInsets.all(12.0),  
            child: GridView( 
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 2,  
                  crossAxisSpacing: 4.0,  
                  mainAxisSpacing: 4.0  
              ),  
        children: <Widget>[
          Container(
            child: Stack(
             children: <Widget>[
               Image(image: AssetImage('assets/one.jpg')),
               Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: <Widget>[
                     Container(
                       height: 80,
                       width: 450,
                       decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(90, 46, 39, 39),
                                      width: 1),
                                  color: Color.fromARGB(102, 37, 37, 45)),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                         children: <Widget>[
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: <Widget>[
                               Container(
                                 margin: EdgeInsets.all(2),
                                 child:Text('4 killo',
                                 style: TextStyle(fontSize: 22, color: Color.fromARGB(228, 247, 245, 245)),
                                 
                                 
                                 ),
                                 ),
                               Container(
                                  margin: EdgeInsets.all(5),
                                 child: Text("Addis Ababa",
                                 style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  228, 247, 245, 245)),
                                 ),
                                 
                               )
                               
                               
                             ],
                           ),
                           
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: <Widget>[
                               Container(
                                 margin: EdgeInsets.all(15),
                                 child: Icon(
                                         Icons.star_border_purple500_outlined,
                                         color: Color.fromARGB(255, 255, 255, 255),),
                                       
                                  )
                               
                             ],
                             
                           ) 
                         ],
                       ),
                     )
                   ],
                 ),
               )
             ], 
            ),
            color: Colors.amber),
          Container(color: Color.fromARGB(255, 160, 156, 145)),
          Container(color: Color.fromARGB(255, 0, 0, 0)),
          Container(color: Color.fromARGB(255, 7, 255, 106)),
          Container(color: Color.fromARGB(255, 255, 7, 210)),
          Container(color: Color.fromARGB(255, 255, 44, 7)),
          Container(color: Color.fromARGB(255, 29, 29, 28)),
        ],
      ),
      )
    );
  }
}
