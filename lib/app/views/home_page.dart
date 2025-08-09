import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/calculator_controller.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_bottom_nav.dart';
import 'standard_calculator_page.dart';
import 'scientific_calculator_page.dart';
import 'history_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CalculatorController calculatorController = Get.find();
    
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Naiyo Calculator',
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
