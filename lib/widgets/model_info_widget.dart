import 'package:flutter/material.dart';
import '../services/file_picker_service.dart';

/// Widget that displays information about the currently loaded 3D model
class ModelInfoWidget extends StatelessWidget {
  final String? selectedFilePath;

  const ModelInfoWidget({
    super.key,
    required this.selectedFilePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Model:',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 4),
              Text(
                _getModelDescription(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              if (selectedFilePath != null) ...[
                const SizedBox(height: 4),
                Text(
                  'Type: ${_getFileType()}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey[600],
                      ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _getModelDescription() {
    if (selectedFilePath != null) {
      return 'File: ${FilePickerService.getFileName(selectedFilePath!)}';
    }
    return 'Built-in: HORNET.glb';
  }

  String _getFileType() {
    if (selectedFilePath == null) return 'Asset';

    final fileName = selectedFilePath!.toLowerCase();
    if (fileName.endsWith('.glb')) return 'GLB';
    if (fileName.endsWith('.gltf')) return 'GLTF';
    return 'Unknown';
  }
}
