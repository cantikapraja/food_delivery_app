import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: .0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.tune_outlined),
            hintText: "Search..",

            hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
