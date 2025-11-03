import 'package:flutter/material.dart';
import 'package:homehub_v2/widgets/addnewitemcard.dart';
import 'package:homehub_v2/widgets/profileidentification.dart';

class Addnewitempage extends StatelessWidget {
  const Addnewitempage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.center,
        child: Column(children: [Profileidentification(), AddNewItemCard()]),
      ),
    );
  }
}
