import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'slider demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CarouselSlider(
          items: [
            Card(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
            Card(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
            ),
            Card(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
          ],
          options: CarouselOptions(
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(
              seconds: 1,
            ),
            autoPlayAnimationDuration: const Duration(
              milliseconds: 500,
            ),
            autoPlayCurve: Curves.ease,
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}
