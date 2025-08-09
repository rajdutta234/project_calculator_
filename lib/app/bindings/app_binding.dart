import 'package:get/get.dart';
import '../controllers/calculator_controller.dart';
import '../controllers/history_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalculatorController>(() => CalculatorController());
    Get.lazyPut<HistoryController>(() => HistoryController());
  }
}
