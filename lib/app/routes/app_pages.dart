import 'package:get/get.dart';
import '../views/home_page.dart';
import '../views/standard_calculator_page.dart';
import '../views/scientific_calculator_page.dart';
import '../views/history_page.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;
  
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.standard,
      page: () => const StandardCalculatorPage(),
    ),
    GetPage(
      name: Routes.scientific,
      page: () => const ScientificCalculatorPage(),
    ),
    GetPage(
      name: Routes.history,
      page: () => const HistoryPage(),
    ),
  ];
}
