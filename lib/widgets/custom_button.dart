import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFFFFFF)),
        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(29, 76, 215, 0.706)),
        
      ),

      child: Text(text, style: const TextStyle(fontSize: 16)),
    );
  }
}
