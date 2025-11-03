import 'package:flutter/material.dart';
import 'package:homehub_v2/widgets/addratingcard.dart';
import 'package:homehub_v2/widgets/agencyidentification.dart';
import 'package:homehub_v2/widgets/userprofilenavigation.dart';

class Addratingpage extends StatelessWidget {
  const Addratingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Agencyidentification(),
            SizedBox(height: 16),
            Center(
              child: SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF004E98),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  child: const Text(
                    "Contact",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            CustomTabBar(),
            SizedBox(height: 16),
            AddRatingCard(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
