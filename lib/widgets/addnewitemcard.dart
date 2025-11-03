import 'package:flutter/material.dart';
import 'package:homehub_v2/screens/profile_screen.dart';
import 'package:homehub_v2/widgets/imageaploadwidget.dart';
import 'package:homehub_v2/widgets/buildtextfeild.dart';

class AddNewItemCard extends StatefulWidget {
  const AddNewItemCard({super.key});

  @override
  State<AddNewItemCard> createState() => _AddNewItemCardState();
}

class _AddNewItemCardState extends State<AddNewItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Add a New Item",
                style: TextStyle(
                  color: Color(0xFF004E98),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              "Add an item name",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 8),
            buildTextField("Item Name", "Enter item name"),

            const SizedBox(height: 12),

            // Image upload
            const Text(
              "Add an image for your item",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 8),
            const ImageUploadBox(),
            const SizedBox(height: 12),

            // Price Field
            const Text(
              "Add the item's price",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 8),
            buildTextField("Price", "Enter price"),

            const SizedBox(height: 12),

            // Description Field
            const Text(
              "Add a brief description",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 8),
            buildTextField("Description", "Enter short description"),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ), //need to verify if profile screen is the one that shows up to the profile owner
                  );
                },
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
                  "Add",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
