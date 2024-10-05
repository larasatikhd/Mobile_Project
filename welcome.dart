import 'package:flutter/material.dart';
import 'homepage.dart'; // Import HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion App',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(), // Rute untuk WelcomeScreen
        '/second': (context) => CasualCollectionsPage(), // Rute untuk CasualCollectionsPage
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              // Bagian gambar
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: AssetImage('assets/img/img1.jpeg'), // Gambar model pertama
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: AssetImage('assets/img/img2.jpeg'), // Gambar model kedua
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 310,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        image: DecorationImage(
                          image: AssetImage('assets/img/img3.jpeg'), // Gambar model utama
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Bagian teks utama
              Text(
                'The Fashion App That Makes You Look Your Best',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Discover a world of fashion tailored just for you. Elevate your style effortlessly with curated looks and the latest trends.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 40),
              // Tombol utama untuk navigasi
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second'); // Mengarahkan ke CasualCollectionsPage
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  backgroundColor: Colors.brown, // Warna tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Let\'s Get Started',
                  style: TextStyle(
                    color: Colors.white, // Mengubah warna teks menjadi putih
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Teks untuk sign in
              TextButton(
                onPressed: () {
                  // Aksi saat "Sign In" diklik
                },
                child: Text(
                  'Already have an account? Sign In',
                  style: TextStyle(
                    color: Colors.brown,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}