import 'package:flutter/material.dart';

class FloatingActionButtonGreeen extends StatefulWidget {
  const FloatingActionButtonGreeen({super.key});

  @override
  State<FloatingActionButtonGreeen> createState() =>
      _FloatingActionButtonGreeenState();
}

class _FloatingActionButtonGreeenState
    extends State<FloatingActionButtonGreeen> {
  bool _pressed = false;

  void onPressedFav() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Add fav'),
      ),
    );
    setState(() {
      _pressed = !_pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(_pressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}
