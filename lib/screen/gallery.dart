import 'package:flutter/material.dart';

void main() => runApp(Gallery());

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Galeri'),
            backgroundColor: Colors.black12,
          ),
          body: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Image.asset('assets/bggaleri.jpg'),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'RTX™ 3090 SUPRIM Gallery',
                      style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Card(
                    child:Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/a.jpg',
                        height: 300,
                        width: 300,),
                    ),
                  ),
                  Card(
                    child:Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/b.jpg',
                        height: 300,
                        width: 300,),
                    ),
                  ),
                  Card(
                    child:Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/c.jpg',
                        height: 300,
                        width: 300,),
                    ),
                  ),
                  Card(
                    child:Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/d.jpg',
                        height: 300,
                        width: 300,),
                    ),
                  ),
                  Card(
                    child:Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/e.jpg',
                        height: 300,
                        width: 300,),
                    ),
                  ),
                  Card(
                    child:Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/f.jpg',
                        height: 300,
                        width: 300,),
                    ),
                  ),
                  Card(
                    child:Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/g.jpg',
                        height: 300,
                        width: 300,),
                    ),
                  ),
                  Card(
                    child:Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/h.jpg',
                        height: 300,
                        width: 300,),
                    ),
                  ),
                  Card(
                    child:Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('assets/i.jpg',
                        height: 300,
                        width: 300,),
                    ),
                  ),
                ]
            ),
          )
      ),
    );
  }
}