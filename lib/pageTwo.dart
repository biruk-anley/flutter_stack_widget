import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({ Key? key }) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text("Page Two"),
        centerTitle: true,
        elevation: 0,
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
                child: Image(image: AssetImage('assets/me2.png'),)
                ),
            Positioned(
               top: 10,
               left: 30,
               child: Container(
                width: 300,
                height: 50,

                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(0, 0, 0, 0), width: 1),
                      color: Color.fromARGB(25, 18, 18, 25)),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 9.0),
                        child: Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: Color.fromARGB(206, 255, 255, 255),
                        ),
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                             Container(
                                  padding: EdgeInsets.only(left: 1.0),
                                  child: Icon(
                                      Icons.mode_edit_outline,
                                      color: Color.fromARGB(206, 255, 255, 255),
                                  ),
                              ),
                              Container(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Icon(
                                        Icons.more_vert_rounded,
                                        color: Color.fromARGB(206, 255, 255, 255),
                                    ),
                                  ),

                          ],
                        )
                       
                      
                    ],
                  )
                  ),
            )
          ],
        ),
      ),
      
    );
  }
}











