import 'package:flutter/material.dart';
import 'package:testappbita/Device/qr_code_scanner_page.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Device"),
        backgroundColor: Colors.lightGreen,
        leading: SizedBox.shrink(), // Removes the back icon
      ),
      body: Container(
        color: Colors.lightGreenAccent, // Optional: Set a background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Image.asset(
                "assets/images/device.png", // Replace with your image path
                width: 300, // Adjust width as needed
                height: 300, // Adjust height as needed
                fit: BoxFit.cover, // Adjust how the image fits
              ),
              const SizedBox(
                  height:
                      40), // Add some spacing between the image and the button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Rounded rectangle shape
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 15), // Button padding
                ),
                onPressed: () {
                  // Navigate to the next screen (replace with your target screen)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QRCodeScanner()), // Replace with your target screen
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18, // Adjust the text size
                    color: Colors.white, // Text color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
