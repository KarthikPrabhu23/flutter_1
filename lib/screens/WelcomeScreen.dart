import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
        child: Column(children: [
          const SizedBox(
            height: 128.0,
            width: 75.0,
          ),
          Image.asset(
            "assets/gallery.png",
            height: 56,
            width: 56.0,
            // top: 128.0,
          ),
          const SizedBox(height: 20),
          const Text(
            "Please select your language",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 30.0),
          Container(
            height: 56,
            width: 216,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
            ),
            child: DropdownButtonExample(),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 216,
            height: 50,
            child: CustomButton (
              onPressed: () {},
              text: "NEXT",
              
            ),
          )
        ]),
      ))),
    );
  }
}

const List<String> list = <String>['English', 'Hindi', 'Konkani'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontFamily: 'Montserrat',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
      ),
      underline: Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            border: Border.all(color: const Color.fromARGB(255, 0, 0, 0))),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
