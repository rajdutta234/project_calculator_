# Naiyo Calculator

A modern, stylish calculator application built with Flutter using GetX for state management.

## Features

### 🧮 Calculator Modes
- **Standard Calculator**: Basic arithmetic operations (add, subtract, multiply, divide, percentage, decimal, clear, backspace)
- **Scientific Calculator**: Advanced mathematical functions (sin, cos, tan, log, ln, √, x², x³, factorial, π, e, inverse)

### 🎨 UI/UX Features
- **Modern Design**: Clean, modern interface with Material Design 3
- **Responsive Layout**: Adapts to different screen sizes
- **Smooth Animations**: Ripple effects and smooth transitions
- **Google Fonts**: Uses Poppins font for clean typography

### 📊 History Management
- **Calculation History**: Automatically saves all calculations
- **History View**: Browse past calculations with timestamps
- **History Actions**: Tap to reuse results, long press to delete
- **Clear History**: Option to clear all history at once

### 🔧 Technical Features
- **GetX State Management**: Reactive state management and navigation
- **Math Expressions**: Complex expression evaluation using math_expressions package
- **Error Handling**: Graceful error handling for invalid expressions
- **Memory Efficient**: Limits history to 50 items

## Getting Started

### Prerequisites
- Flutter SDK (3.8.1 or higher)
- Dart SDK (3.8.1 or higher)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd calculator
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                     # Entry point with GetMaterialApp
├── app/
│   ├── bindings/                 # GetX dependency injection
│   │   └── app_binding.dart
│   ├── controllers/             # GetX controllers
│   │   ├── calculator_controller.dart
│   │   └── history_controller.dart
│   ├── models/                  # Data models
│   │   └── history_item.dart
│   ├── routes/                  # GetX routing
│   │   ├── app_routes.dart
│   │   └── app_pages.dart
│   ├── views/                   # UI pages
│   │   ├── home_page.dart
│   │   ├── standard_calculator_page.dart
│   │   ├── scientific_calculator_page.dart
│   │   └── history_page.dart
│   ├── widgets/                 # Reusable widgets
│   │   ├── calculator_button.dart
│   │   ├── custom_app_bar.dart
│   │   └── custom_bottom_nav.dart
│   └── utils/                   # Constants and utilities
│       └── constants.dart
```

## Dependencies

- **get**: ^4.6.6 - State management and navigation
- **math_expressions**: ^2.4.0 - Mathematical expression evaluation
- **google_fonts**: ^6.1.0 - Custom typography

## Usage

### Standard Calculator
- Basic arithmetic operations: +, -, ×, ÷, %
- Clear (C) and backspace (⌫) functionality
- Decimal point support
- Real-time calculation display

### Scientific Calculator
- Trigonometric functions: sin, cos, tan
- Logarithmic functions: log, ln
- Power functions: x², x³, √
- Constants: π, e
- Advanced functions: factorial, inverse

### History
- View all past calculations
- Tap any result to reuse it
- Long press to delete individual items
- Clear all history option

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Flutter team for the amazing framework
- GetX team for the excellent state management solution
- Math expressions package for mathematical evaluation
- Google Fonts for typography
