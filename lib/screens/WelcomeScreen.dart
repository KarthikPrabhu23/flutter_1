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
          const SizedBox(height: 10),
          const Text("You can change the language at any time",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.0703846,
              ),
              textAlign: TextAlign.center),
          const SizedBox(height: 30.0),
          Container(
            height: 56,
            width: 216,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            child: const DropdownButtonExample(),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 216,
            height: 50,
            child: CustomButton(
              onPressed: () {},
              text: "NEXT",
            ),
          ),
          const SizedBox(height: 247),
          Image.asset(
            "assets/splash1.png",
            height: 106,
            width: 490.0,
          ),
          // ClipPath(
          //   clipper: MariasClipper(),
          //   child: Container(
          //     color: Color.fromARGB(255, 0, 0, 0),
          //     height: 212,
          //     width: 400,
          //   ),
          // )
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

class MariasClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(0 * _xScaling, 4.88889 * _yScaling);
    path.cubicTo(
      0 * _xScaling,
      4.88889 * _yScaling,
      11 * _xScaling,
      14.8889 * _yScaling,
      11 * _xScaling,
      14.8889 * _yScaling,
    );
    path.cubicTo(
      22 * _xScaling,
      24.8889 * _yScaling,
      44 * _xScaling,
      44.8889 * _yScaling,
      67 * _xScaling,
      50.8889 * _yScaling,
    );
    path.cubicTo(
      89 * _xScaling,
      56.8889 * _yScaling,
      111 * _xScaling,
      48.8889 * _yScaling,
      133 * _xScaling,
      38.8889 * _yScaling,
    );
    path.cubicTo(
      156 * _xScaling,
      28.8889 * _yScaling,
      178 * _xScaling,
      16.8889 * _yScaling,
      200 * _xScaling,
      8.88889 * _yScaling,
    );
    path.cubicTo(
      222 * _xScaling,
      0.888889 * _yScaling,
      244 * _xScaling,
      -3.11111 * _yScaling,
      267 * _xScaling,
      2.88889 * _yScaling,
    );
    path.cubicTo(
      289 * _xScaling,
      8.88889 * _yScaling,
      311 * _xScaling,
      24.8889 * _yScaling,
      333 * _xScaling,
      28.8889 * _yScaling,
    );
    path.cubicTo(
      356 * _xScaling,
      32.8889 * _yScaling,
      378 * _xScaling,
      24.8889 * _yScaling,
      389 * _xScaling,
      20.8889 * _yScaling,
    );
    path.cubicTo(
      389 * _xScaling,
      20.8889 * _yScaling,
      400 * _xScaling,
      16.8889 * _yScaling,
      400 * _xScaling,
      16.8889 * _yScaling,
    );
    path.cubicTo(
      400 * _xScaling,
      16.8889 * _yScaling,
      400 * _xScaling,
      112.889 * _yScaling,
      400 * _xScaling,
      112.889 * _yScaling,
    );
    path.cubicTo(
      400 * _xScaling,
      112.889 * _yScaling,
      389 * _xScaling,
      112.889 * _yScaling,
      389 * _xScaling,
      112.889 * _yScaling,
    );
    path.cubicTo(
      378 * _xScaling,
      112.889 * _yScaling,
      356 * _xScaling,
      112.889 * _yScaling,
      333 * _xScaling,
      112.889 * _yScaling,
    );
    path.cubicTo(
      311 * _xScaling,
      112.889 * _yScaling,
      289 * _xScaling,
      112.889 * _yScaling,
      267 * _xScaling,
      112.889 * _yScaling,
    );
    path.cubicTo(
      244 * _xScaling,
      112.889 * _yScaling,
      222 * _xScaling,
      112.889 * _yScaling,
      200 * _xScaling,
      112.889 * _yScaling,
    );
    path.cubicTo(
      178 * _xScaling,
      112.889 * _yScaling,
      156 * _xScaling,
      112.889 * _yScaling,
      133 * _xScaling,
      112.889 * _yScaling,
    );
    path.cubicTo(
      111 * _xScaling,
      112.889 * _yScaling,
      89 * _xScaling,
      112.889 * _yScaling,
      67 * _xScaling,
      112.889 * _yScaling,
    );
    path.cubicTo(
      44 * _xScaling,
      112.889 * _yScaling,
      22 * _xScaling,
      112.889 * _yScaling,
      11 * _xScaling,
      112.889 * _yScaling,
    );
    path.cubicTo(
      11 * _xScaling,
      112.889 * _yScaling,
      0 * _xScaling,
      112.889 * _yScaling,
      0 * _xScaling,
      112.889 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      112.889 * _yScaling,
      0 * _xScaling,
      4.88889 * _yScaling,
      0 * _xScaling,
      4.88889 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      4.88889 * _yScaling,
      0 * _xScaling,
      4.88889 * _yScaling,
      0 * _xScaling,
      4.88889 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
