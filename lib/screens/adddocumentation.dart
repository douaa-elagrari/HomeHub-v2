import 'package:flutter/material.dart';
import 'package:prj_mob_dev/widgets/adddocumentationcard.dart';

class Adddocumentationpage extends StatelessWidget {
  const Adddocumentationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(alignment: Alignment.center, child: AddDoc()),
    );
  }
}
