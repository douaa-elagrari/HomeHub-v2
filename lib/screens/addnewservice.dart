import 'package:flutter/material.dart';
import 'package:homehub_v2/widgets/addnewservicecard.dart';
import 'package:homehub_v2/widgets/agencyidentification.dart';

class Addnewservicepage extends StatelessWidget {
  const Addnewservicepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.center,
        child: Column(children: [Agencyidentification(), addNewservice()]),
      ),
    );
  }
}
