# 🧮 Calculator

A modern, high-performance, and aesthetically pleasing calculator application built with **Flutter**. Designed with **Material Design 3** principles, it offers a seamless experience for both everyday calculations and complex scientific operations, all powered by the robust **GetX** state management system.

---

## ✨ Key Features

### 🧮 Calculator Modes
- **Standard Calculator**: Perfect for daily use. Supports addition, subtraction, multiplication, division, percentages, and basic power functions.
- **Scientific Calculator**: A powerhouse for students and engineers. Features trigonometry (sin, cos, tan), logarithms, square/cube roots, factorials, and mathematical constants (π, e).

### 🎨 UI/UX Excellence
- **Modern Design**: Clean, modern interface leveraging Material Design 3 tokens for a premium, native feel.
- **Dynamic Gradients**: Beautiful, subtle backgrounds that enhance focus and visual appeal across all screens.
- **Glassmorphism Elements**: Modern UI components with soft shadows and translucent layers.
- **Responsive Layout**: Adapts flawlessly to different screen sizes and platforms (Mobile & Web).
- **Smooth Animations**: High-quality ripple effects, smooth transitions, and reactive UI updates.
- **Typography**: Clean, professional look using the **Poppins** font from Google Fonts.

### 📊 History & Persistence
- **Automatic Saving**: Every calculation is instantly stored in local history.
- **History View**: Browse past calculations with relative timestamps (e.g., "5 minutes ago").
- **Smart Recall**: Tap any history item to instantly bring the result back to your active calculator.
- **Full Control**: Delete individual items via long-press or clear your entire history with one tap.

---

## 📱 Screen-by-Screen Deep Dive

### 🏠 1. Home Page (Navigation Hub)
The Home Page serves as the intelligent core of the Calculator. It dynamically hosts the calculator views and manages top-level navigation.

*   **Workflow**:
    *   **Initial State**: Defaults to the Standard Calculator for quick access.
    *   **Mode Toggling**: Use the toggle button in the App Bar or the Bottom Navigation bar to instantly switch between Standard and Scientific modes.
    *   **Navigation**: Switch effortlessly between the main Calculator interface and the History view using the persistent Bottom Navigation bar.
    *   **Reactive UI**: The UI reacts instantly to state changes without any lag, thanks to GetX's `Obx` observers.

### 🔢 2. Standard Calculator Page
Designed for speed and clarity, this screen provides the essential tools for common arithmetic in a beautiful grid layout.

*   **Features**:
    *   Large, readable display area showing the active expression and the current result.
    *   High-contrast operator buttons (Material 3 colors) for error-free input.
    *   Real-time result previewing as you type.
    *   Quick "Square" (x²) shortcut for common exponentiation needs.
*   **Workflow**:
    *   **Input**: Enter numbers and operators; the active expression is shown in a smaller font above the main result.
    *   **Evaluation**: Press `=` to calculate; the expression is evaluated using a robust math engine.
    *   **Persistence**: Upon calculation, the result is automatically saved to the history.
    *   **Correction**: Use `⌫` (Backspace) for precision corrections or `C` (Clear) to start fresh.

### 🧪 3. Scientific Calculator Page
An advanced interface that expands the calculator's capabilities into higher mathematics for complex problem-solving.

*   **Features**:
    *   **Trigonometry**: Sine (`sin`), Cosine (`cos`), and Tangent (`tan`) functions.
    *   **Logarithms**: Base-10 `log` and Natural Log `ln`.
    *   **Advanced Powers**: Square (x²), Cube (x³), and Square Root (√) operations.
    *   **Constants**: Quick access to mathematical constants like Pi (π) and Euler's Number (e).
    *   **Functions**: Logic for Factorial (n!) and Inverse (1/x) operations.
*   **Workflow**:
    *   **Function Application**: Functions are applied logically to the current input.
    *   **Complex Expressions**: Combine scientific constants with standard arithmetic operators for advanced formula evaluation.
    *   **Seamless Integration**: Results from scientific operations can be used immediately in further calculations.

### 📜 4. History Page
A dedicated management space to review your mathematical journey and reuse previous findings.

*   **Features**:
    *   **Timeline View**: A scrollable list of all past calculations, organized with clean cards and shadows.
    *   **Relative Timestamps**: Displays when each calculation was performed (e.g., "Just now", "2 hours ago").
    *   **Result Badges**: Results are highlighted in stylish gradient badges (Indigo to Purple) for high visibility.
    *   **Interactive Recall**: Tapping an item takes you back to the calculator and pre-fills the result.
*   **Workflow**:
    *   **Browse**: Scroll through your calculation history to find previous results.
    *   **Reuse**: Tap any history item; the app navigates back to the calculator and sets the display to that result.
    *   **Maintenance**: Long-press any item to trigger a delete confirmation dialog.
    *   **Reset**: Use the "Clear All" icon in the App Bar to wipe the entire history for a fresh start.

---

## 🔄 Application Workflow Guide

1.  **Start**: The app launches into the Standard Calculator mode with a clean, indigo-themed interface.
2.  **Calculate**: Use the responsive grid buttons to build your expression. The `CalculatorController` handles the logic reactively.
3.  **Result**: Press `=` to see the final result. The app creates a `HistoryItem` with the expression, result, and current timestamp.
4.  **Advanced Work**: If you need more power, tap the "Mode" icon or "Scientific" in the bottom nav to switch to the Scientific Calculator.
5.  **Review**: Tap "History" in the bottom nav at any time to see your previous work.
6.  **Loop**: Tap a history item to bring its result back into the calculator, allowing you to continue complex multi-step calculations without manual re-entry.

---

## 🛠 Technical Architecture

*   **Framework**: Flutter (Dart)
*   **State Management**: GetX (Dependency Injection, Routing, and Reactive State).
*   **Pattern**: MVVM (Model-View-ViewModel) for clean separation of concerns.
*   **Math Engine**: `math_expressions` package for sophisticated parsing and evaluation.
*   **UI/UX**: Custom themed widgets, Google Fonts integration, and Material 3 design system.

---

## 🚀 Installation & Setup

### Prerequisites
- Flutter SDK (3.27.0 or higher)
- Dart SDK (3.9.0 or higher)

### Steps

1.  **Clone the repository**:
    ```bash
    git clone <repository-url>
    cd project_calculator_
    ```
2.  **Install dependencies**:
    ```bash
    flutter pub get
    ```
3.  **Run the app**:
    ```bash
    flutter run -d chrome  # For Web Preview
    flutter run            # For Mobile/Desktop
    ```

---

## 📦 Dependencies

- `get`: ^4.7.2 - State management and navigation.
- `google_fonts`: ^8.1.0 - Premium typography (Poppins).
- `math_expressions`: ^2.7.0 - Robust mathematical evaluation.
- `cupertino_icons`: ^1.0.8 - Iconography support.

---

## 🤝 Contributing

Contributions are welcome!

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

---

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

---

## 🙏 Acknowledgments

- [Flutter](https://flutter.dev) for the amazing framework.
- [GetX](https://pub.dev/packages/get) for simplified state management.
- [Math Expressions](https://pub.dev/packages/math_expressions) for evaluation logic.
- [Google Fonts](https://fonts.google.com) for typography.
