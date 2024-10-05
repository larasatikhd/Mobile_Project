import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              onTap: () {
                // Navigasi ke SearchPage saat search bar ditekan
                Navigator.pushNamed(context, '/third');
              },
            ),
            SizedBox(height: 20),
            // Konten lainnya di HomePage
            Center(
              child: Text('Welcome to the Home Page!'),
            ),
          ],
        ),
      ),
    );
  }
}

class CasualCollectionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Products',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategoryButtonWithImage('Hats', 'assets/img/topi.png', const Color(0xFFEBBC80)),
                _buildCategoryButtonWithImage('Clothes', 'assets/img/clotes.png', const Color(0xFFB6CDF5)),
                _buildCategoryButtonWithImage('Bags', 'assets/img/bags.png', const Color(0xFFAEF1D0)),
                _buildCategoryButtonWithImage('Jeans', 'assets/img/jeans.png', const Color(0xFFF6C5FF)),
              ],
            ),
            SizedBox(height: 20),  // Ukuran jarak untuk memberikan ruang
            // Teks Casual Collections di antara Row dan Expanded
            Text(
              'Casual\nCollections',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',  // Font yang sudah didefinisikan
                color: Colors.black,  // Warna teks
              ),
            ),
            SizedBox(height: 10),  // Ukuran jarak untuk memberikan ruang antara teks dan Expanded
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/img/korean.jpeg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
                BottomNavigationBarItem(
                  icon: Stack(
                    children: [
                      Icon(Icons.shopping_cart),
                      Positioned(
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(minWidth: 12, minHeight: 12),
                          child: Text(
                            '3',
                            style: TextStyle(color: Colors.white, fontSize: 8),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButtonWithImage(String label, String imagePath, Color backgroundColor) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              imagePath,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}