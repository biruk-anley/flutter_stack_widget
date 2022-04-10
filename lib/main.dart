import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        title: 'GeeksforGeeks',
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
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
                padding: EdgeInsets.fromLTRB(1, 20, 1, 20),
                height: 250,
                color:Color.fromARGB(255, 152, 152, 152),
                child: CircleAvatar(
                    backgroundImage: AssetImage('imgaes/me.png'),
                    radius: 100,
                    
                  ),

              ),
              
            ],
            
          ),
        ),

          
          
          
          
                  )),
  );
}
