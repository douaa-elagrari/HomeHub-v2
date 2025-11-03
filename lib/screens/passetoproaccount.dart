import 'package:flutter/material.dart';
import 'package:homehub_v2/widgets/passetoprocard.dart';

class Passetoproaccountpage extends StatelessWidget {
  const Passetoproaccountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(alignment: Alignment.center, child: PasseToProCard()),
    );
  }
}
