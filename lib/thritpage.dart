import 'package:flutter/material.dart';

class Thritpage extends StatelessWidget {
  const Thritpage({
    super.key,
    required this.ukuran,
    required this.warnaFont,
    required this.inputanColor,
    required this.bgStatis,
  });

  final double ukuran;
  final Color warnaFont;
  final String inputanColor;
  final Color bgStatis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgStatis,
      appBar: AppBar(title: Text("SecondPage"), backgroundColor: Colors.green),
      body: Column(
        children: [
          Text(
            "Hallow",
            style: TextStyle(fontSize: ukuran, color: warnaFont),
          ),
          Text(inputanColor.toString(), style: TextStyle(color: warnaFont)),
        ],
      ),
    );
  }
}
