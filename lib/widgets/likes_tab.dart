import 'package:flutter/material.dart';
import '../models/saved_item.dart';      
import '../models/product.dart';
import '../models/professional.dart';
import '../models/agency.dart';
import '../widgets/product_card.dart';
import '../widgets/job_card.dart';
import '../widgets/agency_card.dart';

class LikesTab extends StatelessWidget {
  final List<SavedItem> likedItems;

  const LikesTab({
    Key? key,
    required this.likedItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 90, left: 16, right: 16, bottom: 20),
      child: likedItems.isEmpty
          ? const Center(child: Text("No favorites yet!"))
          : Column(
              children: likedItems.map((saved) {
                if (saved.type == SavedType.product) {
                  return ProductCard(product: saved.item as Product);
                }

                if (saved.type == SavedType.service) {
                  return JobCard(professional: saved.item as Professional);
                }

                return AgencyCard(agency: saved.item as Agency);
              }).toList(),
            ),
    );
  }
}
