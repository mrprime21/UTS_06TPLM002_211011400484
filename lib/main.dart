import 'package:flutter/material.dart';

void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EcommerceHomePage(),
    );
  }
}

class EcommerceHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UTS_06TPLM002_211011400484'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Tambahkan aksi saat tombol profile ditekan
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple, width: 10.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Shoes',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 0,
              right: 16,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile_image.jpg'),
                  radius: 24.0,
                ),
              ),
            ),
            ListView(
              children: [
                SizedBox(height: 100), // Beri jarak antara judul dan daftar sepatu
                _buildShoeItem(
                  'Nike SB Zoom Blazer',
                  'Mid Premium',
                  '\$ 8.795',
                  'assets/sepatu1.png',
                  Colors.purple,
                ),
                _buildShoeItem(
                  'Nike Air Zoom Pegasus',
                  "Men's Rood Running Shoes",
                  '\$ 9.995',
                  'assets/sepatu1.png',
                  Colors.green,
                ),
                _buildShoeItem(
                  'Nike ZoomX Vaporfly',
                  "Men's Rood Racing Shoes",
                  '\$ 19.695',
                  'assets/sepatu1.png',
                  Colors.pink,
                ),
                _buildShoeItem(
                  'Nike Air Force 1 S50',
                  "Older Kid's Shoes",
                  '\$ 6.295',
                  'assets/sepatu1.png',
                  Colors.grey,
                ),
                _buildShoeItem(
                  'Nike Waffle One',
                  "Men's Shoes",
                  '\$ 8.295',
                  'assets/sepatu1.png',
                  Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShoeItem(String name, String description, String price, String imagePath, Color color) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        color: color,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4), // Memberikan jarak vertikal
                    Text(
                      description,
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(height: 4), // Memberikan jarak vertikal
                    Text(
                      price,
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: 150,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
