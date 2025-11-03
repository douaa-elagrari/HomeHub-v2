import 'package:flutter/material.dart';
import 'package:homehub_v2/widgets/editprofilecard.dart';

class Editprofilepage extends StatelessWidget {
  const Editprofilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(alignment: Alignment.center, child: EditProfCard()),
    );
  }
}
