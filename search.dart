import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Result for "Jacket"',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('6,245 founds'),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: items.length, // Adjusted to match the updated item count
                itemBuilder: (context, index) {
                  return ItemCard(item: items[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Icon(Icons.favorite_border),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text("\$${item.price}"),
                    Spacer(),
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    Text(item.rating.toString()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  final String title;
  final String imageUrl;
  final double price;
  final double rating;

  Item({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });
}

// Updated item list with 6 items
List<Item> items = [
  Item(
    title: "Brown Jacket",
    imageUrl: "assets/img/img9.jpg",
    price: 83.97,
    rating: 4.9,
  ),
  Item(
    title: "Brown Suite",
    imageUrl: "assets/img/img8.jpg",
    price: 120.00,
    rating: 5.0,
  ),
  Item(
    title: "Yellow Shirt",
    imageUrl: "assets/img/img7.jpg",
    price: 75.50,
    rating: 4.8,
  ),
  Item(
    title: "Red Jacket",
    imageUrl: "assets/img/img4.jpg",
    price: 99.99,
    rating: 4.7,
  ),
  Item(
    title: "Green Coat",
    imageUrl: "assets/img/img5.jpg",
    price: 150.00,
    rating: 4.6,
  ),
  Item(
      title: "Blue Sweater",
      imageUrl: "assets/img/img10.jpg",
      price: 65.00,
      rating:4.5,
      ),
];