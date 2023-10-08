import 'package:aplikasi_cuaca/detail.dart';
import 'package:aplikasi_cuaca/kelas.dart';
import 'package:flutter/material.dart';

class PageLoro extends StatefulWidget {
  const PageLoro({super.key});

  @override
  State<PageLoro> createState() => _PageLoroState();
}

class _PageLoroState extends State<PageLoro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelas'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Kelas place = KelasList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.kelas,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(place.nama),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: KelasList.length,
      ),
    );
  }
}
