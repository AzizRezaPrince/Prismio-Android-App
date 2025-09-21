import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

/// Widget that displays the 3D model using ModelViewer
class ModelViewerWidget extends StatelessWidget {
  final String? selectedFilePath;
  static const String defaultModelPath = 'assets/models/HORNET.glb';

  const ModelViewerWidget({
    super.key,
    required this.selectedFilePath,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: _buildModelViewer(),
        ),
      ),
    );
  }

  Widget _buildModelViewer() {
    if (selectedFilePath != null) {
      return ModelViewer(
        backgroundColor: const Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
        src: 'file://$selectedFilePath',
        alt: 'A 3D model from device storage',
        autoRotate: true,
        autoPlay: true,
        cameraControls: true,
        disableZoom: false,
        loading: Loading.eager,
      );
    }

    return const ModelViewer(
      backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
      src: defaultModelPath,
      alt: 'A 3D model of a HORNET',
      autoRotate: true,
      autoPlay: true,
      cameraControls: true,
      disableZoom: false,
    );
  }
}
