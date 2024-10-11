import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product Listing"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ('Home'),
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: ('Search'),
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ('Profile'),
              backgroundColor: Colors.blue,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              productRow(
                "images/google.png",
                "Google Pixel",
                "Price: 20000 PKR",
                "A premium smartphone with amazing features.",
              ),
              productRow(
                "images/iphone.png",
                "iPhone",
                "Price: 25000 PKR",
                "The latest iPhone with advanced features.",
              ),
              productRow(
                "images/laptop.png",
                "Laptop",
                "Price: 60000 PKR",
                "High-performance laptop for gaming and work.",
              ),
              productRow(
                "images/pendrive.png",
                "Pen Drive",
                "Price: 1000 PKR",
                "32GB USB 3.0 high-speed pen drive.",
              ),
              productRow(
                "images/tablet.png",
                "Tablet",
                "Price: 15000 PKR",
                "Portable and powerful tablet for on-the-go use.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget productRow(
    String imagePath,
    String title,
    String price,
    String description,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: Image.asset(imagePath),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
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
