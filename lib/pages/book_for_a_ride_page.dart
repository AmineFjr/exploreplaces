import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'package:http/http.dart' as http;

class BookForARidePage extends StatefulWidget {
  const BookForARidePage({Key? key}) : super(key: key);

  @override
  State<BookForARidePage> createState() => _BookForARidePageState();
}

class _BookForARidePageState extends State<BookForARidePage> {
  String? selectedVehicle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Let's Book A Tour",
          style: TextStyle(color: Color(0xFF9E00FF), fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Explore and Book Your Adventure',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(158, 0, 255, 1),
                ),
              ),
              const SizedBox(height: 20.0),
              _buildVehicleSelection(),
              const SizedBox(height: 20.0),
              _buildTextWithBackgroundImage(),
              const SizedBox(height: 10.0),
              _buildText('Fill the Details'),
              const SizedBox(height: 10.0),
              MyCustomForm(selectedVehicle: selectedVehicle),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVehicleSelection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: _buildVehicleOption('Car', 'assets/car.png'),
        ),
        const SizedBox(width: 10.0),
        Flexible(
          child: _buildVehicleOption('Bus', 'assets/bus.png'),
        ),
        const SizedBox(width: 10.0),
        Flexible(
          child: _buildVehicleOption('Bike', 'assets/bike.png'),
        ),
      ],
    );
  }

  Widget _buildVehicleOption(String title, String assetPath) {
    bool isSelected = selectedVehicle == title;
    return InkWell(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedVehicle = null; // Deselect the vehicle if it's already selected
          } else {
            selectedVehicle = title; // Select the vehicle if it's not selected
          }
        });
      },
      splashColor: Colors.white10,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFC2D9FF) : Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                assetPath,
                width: 100,
                height: 100,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Color.fromRGBO(142, 143, 255, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget _buildTextWithBackgroundImage() {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: const AssetImage('cultural1.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3), // Opacité du voile (30%)
              BlendMode.darken, // Mode de fusion pour assombrir l'image
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Selected Place',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6), // Couleur d'arrière-plan légèrement opaque
                  borderRadius: BorderRadius.circular(20.0), // Bords arrondis
                ),
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0), // Espacement interne
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espacement entre les étoiles
                  children: [
                    _buildStarIcon(),
                    const SizedBox(width: 4.0), // Espacement entre les étoiles
                    _buildStarIcon(),
                    const SizedBox(width: 4.0), // Espacement entre les étoiles
                    _buildStarIcon(),
                    const SizedBox(width: 4.0), // Espacement entre les étoiles
                    _buildStarIcon(),
                    const SizedBox(width: 4.0), // Espacement entre les étoiles
                    _buildStarIcon(),
                    const SizedBox(width: 4.0), // Espacement entre les étoiles
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _buildStarIcon() {
  return const Icon(
    Icons.star,
    color: Colors.yellow,
    size: 28.0, // Taille légèrement agrandie
  );
}


  Widget _buildText(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(158, 0, 255, 1),
        ),
        softWrap: true,
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  final String? selectedVehicle;

  const MyCustomForm({Key? key, this.selectedVehicle}) : super(key: key);

  @override
  MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  int counter = 1;
  String? username;
  String? country;
  String get selectedVehicle => widget.selectedVehicle!;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextField('Username', (value) => username = value),
          const SizedBox(height: 20.0),
          _buildTextField('Country', (value) => country = value),
          const SizedBox(height: 20.0),
          _buildTeamSizeInput(),
          const SizedBox(height: 20.0),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          const SizedBox(height: 10.0),
         
          const SizedBox(height: 20.0),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _submitForm();
                  }
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String labelText, void Function(String?) onChanged) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $labelText';
        }
        return null;
      },
      onChanged: onChanged,
    );
  }

  Widget _buildTeamSizeInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Team Size',
          style: TextStyle(
            fontSize: 16.0,
            color: Color.fromRGBO(110, 112, 118, 1),
          ),
        ),
        const SizedBox(height: 10.0),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Text(
                '$counter',
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: incrementCounter,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color(0xFFFFE500),
                textStyle: const TextStyle(fontSize: 18.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text('Add +'),
            ),
            ElevatedButton(
              onPressed: decrementCounter,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                textStyle: const TextStyle(fontSize: 18.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text('Remove -'),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _submitForm() async {
    print('username: $username');
    print('country: $country');
    print('vehicle: $selectedVehicle');
    print('team size: $counter');
    print('selected place: ');
    final conn = await MySqlConnection.connect(ConnectionSettings(
        host: 'srv1015.hstgr.io', user: 'u986651684_admin', password: 'esgiLYON2024', db: 'u986651684_exploreplaces'
    ));
    await conn.query(
        "CREATE TABLE IF NOT EXISTS booking (id INT AUTO_INCREMENT PRIMARY KEY, username VARCHAR(255), country VARCHAR(255), vehicle VARCHAR(255), team_size INT, selected_place VARCHAR(255))"
    );
    await conn.query(
        "INSERT INTO booking (username, country, vehicle, team_size, selected_place) VALUES (?, ?, ?, ?, ?)",
        [username, country, selectedVehicle, counter, 'Cultural']
    );
    await conn.close();
  }
}
