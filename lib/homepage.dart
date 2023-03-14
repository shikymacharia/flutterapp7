import 'package:flutter/material.dart';
import 'package:workout/right.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const RightPage();
              },
            ),
          );
        },
        child: const Text('this is right'),
      ),
    );
  }
}
