import 'package:flutter/material.dart';

/// Widget containing control buttons for file operations
class ControlButtonsWidget extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPickFile;
  final VoidCallback onResetToDefault;

  const ControlButtonsWidget({
    super.key,
    required this.isLoading,
    required this.onPickFile,
    required this.onResetToDefault,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton.icon(
            onPressed: isLoading ? null : onPickFile,
            icon: isLoading
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.folder_open),
            label: Text(isLoading ? 'Loading...' : 'Pick GLB File'),
          ),
          ElevatedButton.icon(
            onPressed: onResetToDefault,
            icon: const Icon(Icons.home),
            label: const Text('Default Model'),
          ),
        ],
      ),
    );
  }
}
