import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'city tour',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
       home: const HomeScreen(),
      ),
  }
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text('city tour'),
      body:SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              children: [
                _img('https://picsum.photos/id/162/300/200'),
                const SizedBox(width, 12),
                _img('https://picsum.photos/id/164/300/200'),
                const SizedBox(width, 12),
                _img('https://picsum.photos/id/174/300/200'),
              ]
            ),
        ),
        const SizedBox(height: 24),
        const Text('Explore, Enjoy, Experience.',style: TextStyle(frontSize: 20, fontWeight: FontWeight(bold)),
        const SizedBox(height: 8),
        const Text(
          'Explore the charm of our city\'s hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experinces that await you \'s treasures.',
          style: TextStyle(frontSize: 14, color: Colors.black87),
        ),
          ],
        ),
      ),
      );
  }
      widget _img(String url) {
        return ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(8)),
          child: image.network(
          url,
           height:300, 
           widht: 150, 
           fit; Boxfit.cover),
        ),
    );
  }
}
'''[cite: 1]