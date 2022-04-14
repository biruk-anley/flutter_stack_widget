import 'package:flutter/material.dart';
import 'package:stack_images/pageTwo.dart';

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
      routes: {
        
        '/next': (context) => PageTwo(),
      },
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
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
                width: 350,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                height: 350,
                color: Color.fromARGB(175, 241, 235, 235),
                child: Padding(
                  padding: EdgeInsets.all(45),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/one.jpg'),
                    radius: 100,
                  ),
                )),
            Positioned(
              top: 220,
              left: 190,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: Color.fromARGB(159, 18, 18, 25)),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Kibur",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 218, 213, 213),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios_rounded),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, '/next');
        },
      ),
    );
  }
}
