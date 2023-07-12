import 'package:flutter/material.dart';

class ComplaintPage extends StatefulWidget {
  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  late String selectedCategory;
  TextEditingController complaintController = TextEditingController();

  List<String> categories = [
    'Infrastructure',
    'Service',
    'Safety',
    // Add more categories as needed
  ];

  void submitComplaint() {
    String complaint = complaintController.text;
    // Perform necessary actions with the complaint, such as storing it locally
    // and updating the UI if required
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint Entry'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              value: selectedCategory,
              onChanged: (newValue) {
                setState(() {
                  selectedCategory = newValue!;
                });
              },
              items: categories.map((category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Category',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: complaintController,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Complaint',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: submitComplaint,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
