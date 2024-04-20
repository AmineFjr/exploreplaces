import 'package:flutter/material.dart';
import 'book_for_a_ride_page.dart';
import 'natural_wonders_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  Widget _buildCategoryButton(
      String text, {
        required VoidCallback onPressed,
        Color? backgroundColor,
      }) {
    return Flexible(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 100),
          foregroundColor: Colors.black,
          backgroundColor: backgroundColor ?? const Color(0xFF8E8FFA),
          padding: const EdgeInsets.all(20),
          textStyle: const TextStyle(fontSize: 18.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Explore'),
          centerTitle: false
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 10.0), // Adjust the value as needed
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Places',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              const Image(
                image: AssetImage("assets/image-home-page.png"),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Select a Place from the categories',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                softWrap: true,
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildCategoryButton(
                    'Natural Wonders',
                    onPressed: () {
                      // Navigate to the NaturalWondersPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NaturalWondersPage()),
                      );
                    },
                  ),
                  const SizedBox(width: 20.0),
                  _buildCategoryButton(
                    'Nightlife',
                    onPressed: () {
                      // Action du deuxième bouton
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildCategoryButton(
                    'Landmarks',
                    onPressed: () {
                      // Action du troisième bouton
                    },
                    backgroundColor: const Color(0xFFC2D9FF),
                  ),
                  const SizedBox(width: 10.0),
                  _buildCategoryButton(
                    'Cultural',
                    onPressed: () {
                      // Action du quatrième bouton
                    },
                    backgroundColor: const Color(0xFFC2D9FF),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the NaturalWondersPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BookForARidePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(400, 100),
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xFFFFE500),
                  textStyle: const TextStyle(fontSize: 18.0),
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