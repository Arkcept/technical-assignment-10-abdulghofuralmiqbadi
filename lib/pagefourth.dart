import 'package:flutter/material.dart';

class PagePapat extends StatefulWidget {
  const PagePapat({super.key});

  @override
  State<PagePapat> createState() => _PageSijiState();
}

class _PageSijiState extends State<PagePapat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Text('Tidak Ada Hehe'),
      ),
    );
  }
}
