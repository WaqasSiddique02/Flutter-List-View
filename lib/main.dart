import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              context,
              "images/google.png",
              "Google Pixel",
              "Price: 20000 PKR",
              "A premium smartphone with amazing features.",
            ),
            productRow(
              context,
              "images/iphone.png",
              "iPhone",
              "Price: 25000 PKR",
              "The latest iPhone with advanced features.",
            ),
            productRow(
              context,
              "images/laptop.png",
              "Laptop",
              "Price: 60000 PKR",
              "High-performance laptop for gaming and work.",
            ),
            productRow(
              context,
              "images/pendrive.png",
              "Pen Drive",
              "Price: 1000 PKR",
              "32GB USB 3.0 high-speed pen drive.",
            ),
            productRow(
              context,
              "images/tablet.png",
              "Tablet",
              "Price: 15000 PKR",
              "Portable and powerful tablet for on-the-go use.",
            ),
          ],
        ),
      ),
    );
  }

  Widget productRow(
    BuildContext context,
    String imagePath,
    String title,
    String price,
    String description,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails(
              imagePath: imagePath,
              title: title,
              price: price,
              description: description,
            ),
          ),
        );
      },
      child: Padding(
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
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String description;

  const ProductDetails({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset(imagePath),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              price,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Products"),
            ),
          ],
        ),
      ),
    );
  }
}
