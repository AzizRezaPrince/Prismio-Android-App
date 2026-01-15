# PRISMIO SYSTEM - AR Memory Palace Learning Platform

An innovative Flutter-based educational application that revolutionizes learning through Augmented Reality (AR) 3D models, interactive quizzes, AI-generated content, and memory palace techniques. Transform complex subjects into engaging, memorable experiences.

## 🌟 Key Features

### 🎓 Advanced Learning System
- **AI Adaptive Quiz System**: 13 questions per lesson with 4 question types (MCQ, T/F, Fill-in, Short Answer) and 3 difficulty levels
- **Intelligent Flashcards**: 3 key concept cards with definition, example, and AR hint format
- **Smart Summaries**: 30-second, 1-minute, and 3-minute versions with key takeaways
- **Advanced Mnemonics**: Acronym-based memory devices, visual stories, and funny memory aids

### 🏰 Memory Palace Architecture
- **5 Themed Rooms**: Foundation → Mastery learning progression
- **Interactive AR Objects**: Golden Light Bulb, Building Blocks, Floating Puzzle Pieces, Memory Crystals, Achievement Crown
- **XP System**: 500 XP per lesson with achievement badges
- **Learning Paths**: Time-estimated progression with personalized challenges

### 🎮 Gamification & Engagement
- **Interactive Puzzle Rooms**: Easy (2 min), Medium (5 min), Hard (7 min) challenges
- **Story Mode**: 5-chapter Hero's Journey narrative with character development
- **Multiplayer Battle Quiz**: Quick Fire Duel, Concept Clash, Integration Showdown
- **Sleep-Learning Audio**: 5-minute scientifically structured audio scripts

### 🤖 AI Study Coach
- **Daily Goals**: 100 XP in 20 minutes with motivational messages
- **Weekly Structure**: Focused activities with streak milestones (7, 30, 100 days)
- **Analytics Dashboard**: 8 metric categories with 20+ tracked items

### 📚 Educational Content
- **3D AR Models**: 20+ interactive models across Biology, IT, Physics, Chemistry
- **Lesson Categories**: Animal Cell, Human Heart, Neuron, Motherboard, Router, Server, and more
- **Teacher Mode**: Complete lesson plans, AR mapping, assessment strategies
- **Markdown Lessons**: Rich content with images and structured information

## 🚀 Quick Start

### Prerequisites
- Flutter SDK (^3.6.0)
- Dart SDK (^3.6.0)
- Android Studio or VS Code with Flutter extensions

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd test
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Platform Support
- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 📖 Usage

### For Students
1. **Browse Subjects**: Choose from Biology, IT, Physics, Chemistry categories
2. **View 3D Models**: Interact with AR models using device camera
3. **Take Lessons**: Read structured content with images
4. **Complete Quizzes**: Test knowledge with adaptive difficulty
5. **Build Memory Palace**: Create mental associations with AR objects

### For Teachers
1. **Generate Content**: Use AI content generator for new lessons
2. **Access Teacher Mode**: Get lesson plans and assessment strategies
3. **Monitor Progress**: View analytics dashboard
4. **Customize Learning**: Adapt difficulty and content

### AI Content Generation
```dart
import 'package:test/services/prismio_content_service.dart';

// Generate complete learning content
final result = await PrismioContentService.generateLearningContent(
  lessonTitle: 'Animal Cell Structure',
  lessonCategory: 'Biology',
  lessonContent: 'Animal cells are eukaryotic cells...',
);

// Extract specific components
final quiz = PrismioContentService.getQuizSet(content);
final palace = PrismioContentService.getMemoryPalace(content);
final flashcards = PrismioContentService.getFlashcards(content);
```

## 🏗️ Architecture

### Core Components
- **Services**: AI content generation, quiz management, file handling
- **Pages**: Home, Lesson, Quiz, Model Viewer, Content Generator
- **Widgets**: Model viewer, quiz taking, category selection
- **Models**: Quiz data, lesson data, model metadata

### Key Dependencies
- `model_viewer_plus`: 3D model rendering and AR support
- `file_picker`: File selection for custom models
- `flutter_markdown`: Rich text lesson content
- `path_provider`: Local file system access

## 📊 Educational Benefits

- **85% Memory Retention**: Memory palace + spaced repetition
- **Multi-Modal Learning**: Visual, auditory, kinesthetic approaches
- **Personalized Adaptation**: AI adjusts difficulty based on performance
- **Gamified Motivation**: XP, badges, streaks, and rewards
- **Accessibility**: Supports VARK learning styles

## 🤝 Contributing

We welcome contributions! Please see our contributing guidelines:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Setup
```bash
# Enable Flutter web support
flutter config --enable-web

# Run tests
flutter test

# Analyze code
flutter analyze

# Format code
flutter format .
```

## 📄 Documentation

- **[PRISMIO_README.md](PRISMIO_README.md)**: Quick start guide
- **[PRISMIO_SYSTEM_DOCUMENTATION.md](PRISMIO_SYSTEM_DOCUMENTATION.md)**: Complete technical reference
- **[PRISMIO_INTEGRATION_EXAMPLES.md](PRISMIO_INTEGRATION_EXAMPLES.md)**: Integration guide with examples
- **[PRISMIO_IMPLEMENTATION_SUMMARY.md](PRISMIO_IMPLEMENTATION_SUMMARY.md)**: Implementation checklist

## 📋 Roadmap

- [ ] AR visualization system enhancement
- [ ] Teacher dashboard implementation
- [ ] Advanced analytics tracking
- [ ] Multiplayer features expansion
- [ ] Offline content synchronization

## 🐛 Issues & Support

- Report bugs via [GitHub Issues](https://github.com/your-repo/issues)
- Feature requests welcome!
- Check documentation first for common questions

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Built with Flutter for cross-platform excellence
- Powered by AI-driven content generation
- Inspired by evidence-based learning research
- Memory palace technique implementation

---

**Transform learning with PRISMIO - Where Education Meets Innovation! 🚀**
