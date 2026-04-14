import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Client3DViewPage extends StatelessWidget {
  const Client3DViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final projectId = args["projectId"] as String;

    final modelPath = 'assets/models/iskcon.glb';

    return Scaffold(
      appBar: AppBar(title: const Text("3D View")),
      body: SizedBox.expand(
        // ✅ full screen
        child: ModelViewer(
          // src: 'asset:assets/models/iskcon.glb',
          src: 'assets/models/iskcon.glb',
          autoRotate: true,
          cameraControls: true,
          disableZoom: false,
        ),
      ),
    );
  }
}
