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
          minimumSize: const Size(200, 100),
          foregroundColor: Colors.black,
          backgroundColor: backgroundColor ?? const Color(0xFF8E8FFA),
          padding: const EdgeInsets.all(20),
          textStyle: const TextStyle(fontSize: 18.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore',
          style: TextStyle(
            color: Color.fromRGBO(110, 122, 118, 1),
            fontSize: 20.0,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 20.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Places',
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(158, 0, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  child: Text(
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(110, 122, 118, 1),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              const FractionallySizedBox(
                widthFactor: 1.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Image(
                    image: AssetImage("assets/image-home-page.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select a Place from the categories',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(158, 0, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildCategoryButton(
                    'Natural Wonders',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NaturalWondersPage()),
                      );
                    },
                  ),
                  const SizedBox(width: 10.0),
                  _buildCategoryButton(
                    'Nightlife',
                    onPressed: () {
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildCategoryButton(
                    'Landmarks',
                    onPressed: () {
                    },
                    backgroundColor: const Color(0xFFC2D9FF),
                  ),
                  const SizedBox(width: 10.0),
                  _buildCategoryButton(
                    'Cultural',
                    onPressed: () {
                    },
                    backgroundColor: const Color(0xFFC2D9FF),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BookForARidePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 100),
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xFFFFE500),
                    textStyle: const TextStyle(fontSize: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Book For A Ride Today!',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
