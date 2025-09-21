import 'package:file_picker/file_picker.dart';
import 'dart:io';

/// Service class for handling GLB/GLTF file picking operations
class FilePickerService {
  /// Picks a GLB or GLTF file from device storage
  /// Returns the file path if successful, null otherwise
  static Future<String?> pickGlbFile() async {
    try {
      // First try with custom file type
      FilePickerResult? result;

      try {
        result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: ['glb', 'gltf'],
          allowMultiple: false,
        );
      } catch (e) {
        // If custom type fails, try with any file type
        print('Custom file type failed, trying any file type: $e');
        result = await FilePicker.platform.pickFiles(
          type: FileType.any,
          allowMultiple: false,
        );
      }

      if (result != null && result.files.single.path != null) {
        final file = File(result.files.single.path!);
        final fileName = result.files.single.name.toLowerCase();

        // Check if the file is a GLB or GLTF file
        if (!fileName.endsWith('.glb') && !fileName.endsWith('.gltf')) {
          throw FilePickerException('Please select a GLB or GLTF file');
        }

        if (await file.exists()) {
          return result.files.single.path!;
        } else {
          throw FilePickerException('Selected file does not exist');
        }
      }

      return null; // User cancelled
    } catch (e) {
      if (e is FilePickerException) {
        rethrow;
      }
      throw FilePickerException('Error loading file: $e');
    }
  }

  /// Validates if a file path points to a valid GLB or GLTF file
  static bool isValidModelFile(String filePath) {
    final fileName = filePath.toLowerCase();
    return fileName.endsWith('.glb') || fileName.endsWith('.gltf');
  }

  /// Extracts file name from full path
  static String getFileName(String filePath) {
    return filePath.split('/').last;
  }
}

/// Custom exception class for file picker errors
class FilePickerException implements Exception {
  final String message;

  const FilePickerException(this.message);

  @override
  String toString() => message;
}
