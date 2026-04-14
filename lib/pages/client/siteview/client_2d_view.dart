import 'package:flutter/material.dart';

class Client2DViewPage extends StatelessWidget {
  const Client2DViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final projectId = args["projectId"] as String;

    final List<String> images = [
      'assets/models/test.jpeg',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("2D View")),
      body: InteractiveViewer(
        minScale: 0.5,
        maxScale: 4,
        child: Center(
          child: Image.asset(
            images[0],
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.contain, // ✅ full image, no crop
          ),
        ),
      ),
    );
  }
}
