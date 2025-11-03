import 'package:flutter/material.dart';
import 'package:homehub_v2/screens/header.dart';
import '../models/professional.dart';

import '../widgets/job_card.dart';
import '../widgets/featureproprety.dart';

import '../widgets/todayoffers.dart';

final List<Professional> professionals = [
  Professional(
    title: "Architect",
    name: "Ahmed B.",
    price: "\$25/hr",
    location: "Algiers",
    image: "assets/images/architect.png",
  ),
  Professional(
    title: "Plumber",
    name: "Fatima K.",
    price: "\$30/hr",
    location: "Oran",
    image: "assets/images/plumber.png",
  ),
  Professional(
    title: "Architect",
    name: "Youssef M.",
    price: "\$20/hr",
    location: "Constantine",
    image: "assets/images/architect.png",
  ),
  Professional(
    title: "Carpenter",
    name: "Imane L.",
    price: "\$35/hr",
    location: "Blida",
    image: "assets/images/electrecian.png",
  ),
];

class HomScreen extends StatelessWidget {
  const HomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Head(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FeaturedPropertyCard(),
                  const SizedBox(height: 24),
                  const TodayOffersSection(),
                  const SizedBox(height: 24),

                  Text(
                    "Available Professionals",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),

                  Column(
                    children: professionals
                        .map((pro) => JobCard(professional: pro))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
