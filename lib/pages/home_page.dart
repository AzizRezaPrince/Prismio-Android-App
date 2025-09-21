import 'package:flutter/material.dart';
import '../services/file_picker_service.dart';
import '../widgets/control_buttons_widget.dart';
import '../widgets/model_info_widget.dart';
import '../widgets/model_viewer_widget.dart';

/// Home page widget that manages the 3D model viewer state
class HomePage extends StatefulWidget {
  final String title;

  const HomePage({
    super.key,
    required this.title,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedFilePath;
  bool _isLoadingFile = false;

  /// Handles picking a GLB file from device storage
  Future<void> _pickGlbFile() async {
    setState(() {
      _isLoadingFile = true;
    });

    try {
      final filePath = await FilePickerService.pickGlbFile();

      if (filePath != null) {
        setState(() {
          _selectedFilePath = filePath;
          _isLoadingFile = false;
        });

        _showSuccessMessage(
            'Loaded: ${FilePickerService.getFileName(filePath)}');
      } else {
        setState(() {
          _isLoadingFile = false;
        });
      }
    } on FilePickerException catch (e) {
      setState(() {
        _isLoadingFile = false;
      });
      _showErrorMessage(e.toString());
    } catch (e) {
      setState(() {
        _isLoadingFile = false;
      });
      _showErrorMessage('Unexpected error: $e');
    }
  }

  /// Resets to the default HORNET model
  void _resetToDefault() {
    setState(() {
      _selectedFilePath = null;
    });

    _showInfoMessage('Reset to default HORNET model');
  }

  /// Shows a success message using SnackBar
  void _showSuccessMessage(String message) {
    _showSnackBar(message, Colors.green);
  }

  /// Shows an error message using SnackBar
  void _showErrorMessage(String message) {
    _showSnackBar(message, Colors.red);
  }

  /// Shows an info message using SnackBar
  void _showInfoMessage(String message) {
    _showSnackBar(message, Colors.blue);
  }

  /// Shows a SnackBar with the given message and color
  void _showSnackBar(String message, Color backgroundColor) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _resetToDefault,
            tooltip: 'Reset to default model',
          ),
        ],
      ),
      body: Column(
        children: [
          ControlButtonsWidget(
            isLoading: _isLoadingFile,
            onPickFile: _pickGlbFile,
            onResetToDefault: _resetToDefault,
          ),
          ModelInfoWidget(
            selectedFilePath: _selectedFilePath,
          ),
          const SizedBox(height: 16),
          ModelViewerWidget(
            selectedFilePath: _selectedFilePath,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickGlbFile,
        tooltip: 'Pick GLB file from device',
        child: const Icon(Icons.add),
      ),
    );
  }
}
