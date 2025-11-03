import 'package:flutter/material.dart';
import 'package:homehub_v2/widgets/imageaploadwidget.dart';
import 'package:homehub_v2/widgets/buildtextfeild.dart';

class AddDoc extends StatefulWidget {
  const AddDoc({super.key});

  @override
  State<AddDoc> createState() => _AddDocState();
}

class _AddDocState extends State<AddDoc> {
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
                "Add Document",
                style: TextStyle(
                  color: Color(0xFF004E98),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Title Field
            const Text(
              "Add a title for your documentation",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 8),
            buildTextField("Title", "Enter the document title"),

            // Description Field
            const Text(
              "Add a description",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 8),
            buildTextField("Description", "Write a short description"),

            const SizedBox(height: 20),

            // Upload Documents
            const Text(
              "Add documents",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 16),
            const ImageUploadBox(),
            const SizedBox(height: 20),

            // Upload Image
            const Text(
              "Add representative image",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 16),
            const ImageUploadBox(),
            const SizedBox(height: 20),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  ); //As there is still not business logic behind the work the data is not sent to our database but it will be inshallah
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
                  "Submit",
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
