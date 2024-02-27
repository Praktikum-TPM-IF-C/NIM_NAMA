import 'package:flutter/material.dart';
import 'package:pertemuan2/views/home_screen.dart';
import 'package:pertemuan2/views/home_screen_dua.dart';

void main() {
  runApp(const HalamanAwal());
}

class HalamanAwal extends StatefulWidget {
  const HalamanAwal({super.key});

  @override
  State<HalamanAwal> createState() => _HalamanAwalState();
}

class _HalamanAwalState extends State<HalamanAwal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      title: "Pertemuan 2",
      home: HomeScreenKedua(),
    );
  }
}
