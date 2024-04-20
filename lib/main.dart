import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Places'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20.0),
              const Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 20.0),
              const Image(
                image: AssetImage("assets/image-home-page.png"),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Select a Place from the categories',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Action du premier bouton
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 100),
                      foregroundColor:
                        Colors.black,
                      backgroundColor:
                        const Color(0xFF8E8FFA),
                      padding:
                        const EdgeInsets.all(20),
                      textStyle:
                        const TextStyle(fontSize: 18.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text('Natural Wonders'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action du deuxième bouton
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 100),
                      foregroundColor:
                      Colors.black,
                      backgroundColor:
                      const Color(0xFF8E8FFA),
                      padding:
                        const EdgeInsets.all(20),
                      textStyle:
                      const TextStyle(fontSize: 18.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text('Nightlife'),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Action du troisième bouton
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 100),
                      foregroundColor:
                      Colors.black,
                      backgroundColor:
                        const Color(0xFFC2D9FF),
                      padding:
                        const EdgeInsets.all(20),
                      textStyle:
                      const TextStyle(fontSize: 18.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text('Landmarks'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action du quatrième bouton
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 100),
                      foregroundColor:
                        Colors.black,
                      backgroundColor:
                        const Color(0xFFC2D9FF),
                      padding:
                        const EdgeInsets.all(20),
                      textStyle:
                      const TextStyle(fontSize: 18.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text('Cultural'),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Action du dernier bouton en bas
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(400, 100),
                  foregroundColor:
                  Colors.black,
                  backgroundColor:
                  const Color(0xFFFFE500),
                  textStyle:
                  const TextStyle(fontSize: 18.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Book For A Ride Today!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
