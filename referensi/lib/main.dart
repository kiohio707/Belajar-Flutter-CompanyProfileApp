import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/profil_screen.dart';
import 'screens/gallery_screen.dart';
import 'screens/about_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff128C7E),
          title: const Text('Samsung'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text('HOME', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('PROFILE', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('GALERY', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('ABOUT', style: TextStyle(color: Colors.white)),
              ),
            ],
            labelColor: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: [
            HomeTab(),
            ProfilTab(),
            GalleryTab(),
            AboutTab(),
          ],
        ),
      ),
    );
  }
}
