# 3D Model Viewer - Modular Architecture

## 📁 Project Structure

```
lib/
├── main.dart                     # App entry point
├── pages/
│   └── home_page.dart           # Main home page logic
├── services/
│   └── file_picker_service.dart # File handling service
└── widgets/
    ├── control_buttons_widget.dart   # Control buttons UI
    ├── model_info_widget.dart        # Model info display
    └── model_viewer_widget.dart      # 3D model viewer
```

## 🧩 Components Overview

### 1. **main.dart**
- **Purpose**: App initialization and theme configuration
- **Responsibilities**: 
  - Setup MaterialApp
  - Define app theme
  - Launch HomePage

### 2. **services/file_picker_service.dart**
- **Purpose**: Handle all file picker operations
- **Features**:
  - Pick GLB/GLTF files from device
  - File validation
  - Error handling with custom exceptions
  - Utility methods for file operations

### 3. **pages/home_page.dart**
- **Purpose**: Main page state management
- **Responsibilities**:
  - Manage selected file state
  - Handle user interactions
  - Coordinate between widgets
  - Show user feedback (SnackBars)

### 4. **widgets/control_buttons_widget.dart**
- **Purpose**: File operation controls
- **Features**:
  - Pick GLB file button
  - Reset to default button
  - Loading state indicator

### 5. **widgets/model_info_widget.dart**
- **Purpose**: Display current model information
- **Features**:
  - Show current model name
  - Display file type (GLB/GLTF/Asset)
  - Responsive card design

### 6. **widgets/model_viewer_widget.dart**
- **Purpose**: 3D model rendering
- **Features**:
  - Display 3D models using ModelViewer
  - Support both asset and file-based models
  - Consistent styling and controls

## ✨ Benefits of Modular Design

### 🔧 **Maintainability**
- Each component has a single responsibility
- Easy to locate and fix issues
- Clear separation of concerns

### 🚀 **Reusability**
- Widgets can be reused in other parts of the app
- Service classes can be easily extended
- Components are self-contained

### 🧪 **Testability**
- Individual components can be tested separately
- Mock services can be easily injected
- Clear interfaces between components

### 📈 **Scalability**
- Easy to add new features
- Simple to modify existing functionality
- Clear code organization

## 🔄 Data Flow

```
User Action
    ↓
HomePage (State Management)
    ↓
FilePickerService (Business Logic)
    ↓
Update UI Widgets
    ↓
Display Result to User
```

## 🎯 Key Features

- **Modular Architecture**: Clean separation of UI, logic, and services
- **Error Handling**: Custom exceptions with user-friendly messages
- **Responsive UI**: Adaptive widgets that work on different screen sizes
- **State Management**: Centralized state in HomePage with proper updates
- **Service Layer**: Dedicated service for file operations
- **Widget Composition**: Reusable UI components

## 🚀 Usage

The modular structure allows for:
- Easy addition of new 3D model formats
- Simple UI customization
- Straightforward feature extensions
- Better code maintenance
- Improved developer experience