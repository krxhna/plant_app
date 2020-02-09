import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Good app', home: Myhome());
  }
}

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
    elevation: 20,    
    color: Colors.pink,
    child: Row(children: <Widget>[Padding(
      padding: const EdgeInsets.all(10.0),
      child: Icon(Icons.access_alarm,color: Colors.amber,),
    )], ),),
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
            child: Text(
          "plants",
          style: TextStyle(color: Color(0xff349e5c)),
        )),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.graphic_eq,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        leading: IconButton(
            icon: Icon(
              Icons.drag_handle,
              color: Colors.black,
            ),
            onPressed: null),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Text(
                  "My plants",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic),
                ),
              ),
              height: 100,
              color: Colors.white),
          Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color(0xff349e5c),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  );
                },
              ),
              height: 200,
              color: Colors.white),
          Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10),
                child: Text(
                  "Explore",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic),
                ),
              ),
              height: 90,
              color: Colors.white),
          Container(
            height: 100,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, i) {
                return Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        child: Stack(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff349e5c)),
                            ),
                          ),
                          Positioned(
                              bottom: 1,
                              left: 20,
                              child: Text(
                                "meow",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ))
                        ]),
                        width: 100,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
