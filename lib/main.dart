import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assaignmet',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App',
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, World!',
              style: TextStyle(
                fontSize: 25,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox.fromSize(size: Size(0, 15)),
            Text(
              'Welcome to Flutter!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'একদা উমর (রা.) রাসূল (সা.) কে বললেন: হে আল্লাহ্’র রাসূল! আপনি আমার নিকট দুনিয়ার সব কিছুর চেয়ে অধিক প্রিয়। তবে আমার জীবনের চেয়ে নয়। তখন নবী (সা.) বললেন: সে সত্তার কসম যাঁর হাতে আমার জীবন! তুমি পরিপূর্ণ ঈমানদার হতে পারবে না যতক্ষণ না আমি তোমার নিকট তোমার জীবন চেয়েও অধিক প্রিয় না হই। তখন ’উমর (রা.) কিছুক্ষণ বুঝেশুনে বললেনঃ আল্লাহ্’র কসম! এখন আপনি আমার নিকট আমার জীবন চেয়েও অধিক প্রিয়। তখন নবী (সা.) বললেনঃ এখন তুমি পরিপূর্ণ ইমানদার হতে পারলে হে ’উমর! (সহিহ বুখারি, হাদিস ৬৬৩২)'),
                  ),
                );
              },
              child: Image.network(
                "https://cdn.pixabay.com/photo/2023/01/22/02/40/arabic-text-7735504_1280.jpg",
                height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 7),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
