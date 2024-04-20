import 'package:flutter/material.dart';

class BookForARidePage extends StatelessWidget {
  const BookForARidePage({super.key});

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
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              _buildVehicleSelection(),
              const SizedBox(height: 20.0),
              _buildText('Select Place'),
              const SizedBox(height: 10.0),
              _buildText('Fill the Details'),
              const SizedBox(height: 10.0),
              const MyCustomForm(),
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
        _buildVehicleOption('Car', 'assets/car.png'),
        const SizedBox(width: 10.0),
        _buildVehicleOption('Bus', 'assets/bike.png'),
        const SizedBox(width: 10.0),
        _buildVehicleOption('Bike', 'assets/bus.png'),
      ],
    );
  }

  Widget _buildVehicleOption(String title, String assetPath) {
    return Flexible(
      child: Column(
        children: [
          Image(image: AssetImage(assetPath)),
          Text(title),
        ],
      ),
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
          color: Colors.blue,
        ),
        softWrap: true,
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  int counter = 0;

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
          _buildTextField('Username'),
          const SizedBox(height: 20.0),
          _buildTextField('Country'),
          const SizedBox(height: 20.0),
          _buildTeamSizeInput(),
          const SizedBox(height: 20.0),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          const SizedBox(height: 10.0),
          const Text(
            "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20.0),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 60, // adjust the height as needed
              width: 200, // adjust the width as needed
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow, // this is the background color
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit',
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

  Widget _buildTextField(String labelText) {
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
          ),
        ),
        const Text(
          'Add Or remove a team member',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
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
}