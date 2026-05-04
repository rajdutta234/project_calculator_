import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/calculator_controller.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_bottom_nav.dart';
import 'standard_calculator_page.dart';
import 'scientific_calculator_page.dart';
import 'history_page.dart';

/// The [HomePage] acts as the main navigation hub and container for the application.
/// 
/// It dynamically switches between [StandardCalculatorPage] and [ScientificCalculatorPage]
/// based on the state in [CalculatorController]. It also manages the persistent 
/// [CustomBottomNavigationBar] for high-level app navigation.
/// 
/// Workflow:
/// 1. Monitors [calculatorController.isScientific] to decide which calculator to show.
/// 2. Handles bottom navigation events to toggle modes or navigate to [HistoryPage].
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CalculatorController calculatorController = Get.find();
    
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Calculator',
        onModeToggle: () => calculatorController.toggleScientific(),
      ),
      body: Obx(() {
        if (calculatorController.isScientific) {
          return const ScientificCalculatorPage();
        } else {
          return const StandardCalculatorPage();
        }
      }),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: calculatorController.isScientific ? 1 : 0,
        onTap: (index) {
          switch (index) {
            case 0:
              calculatorController.toggleScientific();
              break;
            case 1:
              calculatorController.toggleScientific();
              break;
            case 2:
              Get.to(() => const HistoryPage());
              break;
          }
        },
      ),
    );
  }
}
