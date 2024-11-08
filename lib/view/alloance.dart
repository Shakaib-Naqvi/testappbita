import 'package:testappbita/open_folder/singin.dart';
import 'package:testappbita/open_folder/singup.dart';
import 'package:flutter/material.dart';

class RoundedRectangleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.greenAccent,
                    Colors.green, // Dark green color
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 120, // Set the radius for the circle
                    backgroundColor:
                    Colors.white, // White background for the circle
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/icon.png",
                        fit: BoxFit.cover,
                        width:
                        220, // Size the image appropriately within the circle
                        height: 220,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Positioned buttons in a Row at the top right of the rounded rectangle
          Positioned(
            top: 40,
            right: 5, // Adjusted position for the buttons
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.7, // Control transparency for the "Information" button
                  child: ElevatedButton(
                    onPressed: () {
                      // Information button action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.withOpacity(0.8),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(8),
                      minimumSize: Size(40, 40), // Adjust size
                    ),
                    child: const Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.7, // Control transparency for the "Contact" button
                  child: ElevatedButton(
                    onPressed: () {
                      // Contact button action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.withOpacity(0.8),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(8),
                      minimumSize: Size(40, 40), // Adjust size
                    ),
                    child: const Icon(
                      Icons.contact_phone,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.6 - 50,
            left: 10,
            right: 10,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'BITA HOMES',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 60),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to the Signup screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Signup(), // Navigate to Signup
                            ),
                          );
                        },
                        child: const Text(
                          'Signup With Email',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shadowColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to the Signin screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Signin(), // Navigate to Signin
                            ),
                          );
                        },
                        child: const Text(
                          'Signin With Email',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Action for tap gesture
                  },
                  child: const Text(
                    'All Rights reserved',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
