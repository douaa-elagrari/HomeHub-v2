import 'package:flutter/material.dart';
import 'package:homehub_v2/widgets/buycard.dart';

class Buyformspage extends StatelessWidget {
  const Buyformspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(alignment: Alignment.center, child: BuyCard()),
    );
  }
}
