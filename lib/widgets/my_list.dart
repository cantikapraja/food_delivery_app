import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(child: Text("All"));
      },
      separatorBuilder: (context, index) {
        return Padding(padding: const EdgeInsets.all(15));
      },
      itemCount: 5,
    );
  }
}
