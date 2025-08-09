import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/calculator_controller.dart';
import '../controllers/history_controller.dart';
import '../widgets/calculator_button.dart';

class ScientificCalculatorPage extends StatelessWidget {
  const ScientificCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CalculatorController controller = Get.find();
    final HistoryController historyController = Get.find();
    
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFF8FAFC),
            Color(0xFFE2E8F0),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Display
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white,
                      Color(0xFFF8FAFC),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF6366F1).withValues(alpha: 0.1),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                    BoxShadow(
                      color: Colors.white.withValues(alpha: 0.8),
                      blurRadius: 1,
                      offset: const Offset(0, -1),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(() => Text(
                      controller.expression,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: const Color(0xFF64748B),
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                    const SizedBox(height: 8),
                    Obx(() => Text(
                      controller.display,
                      style: GoogleFonts.poppins(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E293B),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Scientific Functions
            Expanded(
              flex: 3,
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 1.2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: [
                  // Row 1 - Scientific Functions
                  CalculatorButton(
                    text: 'sin',
                    onPressed: () => controller.scientificFunction('sin'),
                    isFunction: true,
                  ),
                  CalculatorButton(
                    text: 'cos',
                    onPressed: () => controller.scientificFunction('cos'),
                    isFunction: true,
                  ),
                  CalculatorButton(
                    text: 'tan',
                    onPressed: () => controller.scientificFunction('tan'),
                    isFunction: true,
                  ),
                  CalculatorButton(
                    text: 'log',
                    onPressed: () => controller.scientificFunction('log'),
                    isFunction: true,
                  ),
                  // Row 2 - More Functions
                  CalculatorButton(
                    text: 'ln',
                    onPressed: () => controller.scientificFunction('ln'),
                    isFunction: true,
                  ),
                  CalculatorButton(
                    text: '√',
                    onPressed: () => controller.scientificFunction('sqrt'),
                    isFunction: true,
                  ),
                  CalculatorButton(
                    text: 'x²',
                    onPressed: () => controller.scientificFunction('square'),
                    isFunction: true,
                  ),
                  CalculatorButton(
                    text: 'x³',
                    onPressed: () => controller.scientificFunction('cube'),
                    isFunction: true,
                  ),
                  // Row 3 - Constants and More
                  CalculatorButton(
                    text: 'π',
                    onPressed: () => controller.addConstant('π'),
                    backgroundColor: const Color(0xFF8B5CF6),
                    isFunction: true,
                  ),
                  CalculatorButton(
                    text: 'e',
                    onPressed: () => controller.addConstant('e'),
                    backgroundColor: const Color(0xFF8B5CF6),
                    isFunction: true,
                  ),
                  CalculatorButton(
                    text: 'n!',
                    onPressed: () => controller.scientificFunction('factorial'),
                    isFunction: true,
                  ),
                  CalculatorButton(
                    text: '1/x',
                    onPressed: () => controller.scientificFunction('inverse'),
                    isFunction: true,
                  ),
                  // Row 4 - Standard Operations
                  CalculatorButton(
                    text: 'C',
                    onPressed: () => controller.clear(),
                    backgroundColor: const Color(0xFFEF4444),
                    isOperator: true,
                  ),
                  CalculatorButton(
                    text: '⌫',
                    onPressed: () => controller.backspace(),
                    backgroundColor: const Color(0xFFF59E0B),
                    isOperator: true,
                  ),
                  CalculatorButton(
                    text: '%',
                    onPressed: () => controller.addOperator('%'),
                    isOperator: true,
                  ),
                  CalculatorButton(
                    text: '÷',
                    onPressed: () => controller.addOperator('/'),
                    isOperator: true,
                  ),
                  // Row 5 - Numbers
                  CalculatorButton(
                    text: '7',
                    onPressed: () => controller.setDisplay('7'),
                  ),
                  CalculatorButton(
                    text: '8',
                    onPressed: () => controller.setDisplay('8'),
                  ),
                  CalculatorButton(
                    text: '9',
                    onPressed: () => controller.setDisplay('9'),
                  ),
                  CalculatorButton(
                    text: '×',
                    onPressed: () => controller.addOperator('*'),
                    isOperator: true,
                  ),
                  // Row 6
                  CalculatorButton(
                    text: '4',
                    onPressed: () => controller.setDisplay('4'),
                  ),
                  CalculatorButton(
                    text: '5',
                    onPressed: () => controller.setDisplay('5'),
                  ),
                  CalculatorButton(
                    text: '6',
                    onPressed: () => controller.setDisplay('6'),
                  ),
                  CalculatorButton(
                    text: '-',
                    onPressed: () => controller.addOperator('-'),
                    isOperator: true,
                  ),
                  // Row 7
                  CalculatorButton(
                    text: '1',
                    onPressed: () => controller.setDisplay('1'),
                  ),
                  CalculatorButton(
                    text: '2',
                    onPressed: () => controller.setDisplay('2'),
                  ),
                  CalculatorButton(
                    text: '3',
                    onPressed: () => controller.setDisplay('3'),
                  ),
                  CalculatorButton(
                    text: '+',
                    onPressed: () => controller.addOperator('+'),
                    isOperator: true,
                  ),
                  // Row 8
                  CalculatorButton(
                    text: '0',
                    onPressed: () => controller.setDisplay('0'),
                    width: 168,
                  ),
                  CalculatorButton(
                    text: '.',
                    onPressed: () => controller.setDisplay('.'),
                  ),
                  CalculatorButton(
                    text: '=',
                    onPressed: () {
                      controller.calculate();
                      if (controller.display != 'Error' && controller.display != '0') {
                        historyController.addToHistory(
                          controller.expression + controller.display,
                          controller.display,
                        );
                      }
                    },
                    backgroundColor: const Color(0xFF10B981),
                    isOperator: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
