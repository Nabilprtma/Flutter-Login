import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

  class Multiplewidget extends StatefulWidget {
  const Multiplewidget({super.key});

  @override
  State<Multiplewidget> createState() => _MultiplewidgetState();
}

class _MultiplewidgetState extends State<Multiplewidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {}, 
          child: Text("Tombol 1"),
          ),
          ElevatedButton(
          onPressed: () {}, 
          child: Text("Tombol 2"),
          ),
          ElevatedButton(
          onPressed: () {}, 
          child: Text("Tombol 3"),
          )
      ],
    );
  }
}