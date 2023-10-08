import 'package:flutter/material.dart';

class PageSiji extends StatefulWidget {
  const PageSiji({super.key});

  @override
  State<PageSiji> createState() => _PageSijiState();
}

class _PageSijiState extends State<PageSiji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                'https://picsum.photos/1600/900.jpg',
                width: 200,
                height: 200,
              ),
              Image.network(
                'https://picsum.photos/1600/900.jpg',
                width: 200,
                height: 200,
              ),
              Image.network(
                'https://picsum.photos/1600/900.jpg',
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
