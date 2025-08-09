import 'package:get/get.dart';
import '../models/history_item.dart';

class HistoryController extends GetxController {
  final _history = <HistoryItem>[].obs;
  
  List<HistoryItem> get history => _history;
  
  void addToHistory(String expression, String result) {
    _history.insert(0, HistoryItem(
      expression: expression,
      result: result,
      timestamp: DateTime.now(),
    ));
    
    // Keep only last 50 items
    if (_history.length > 50) {
      _history.removeLast();
    }
  }
  
  void clearHistory() {
    _history.clear();
  }
  
  void removeFromHistory(int index) {
    if (index >= 0 && index < _history.length) {
      _history.removeAt(index);
    }
  }
  
  String getHistoryItem(int index) {
    if (index >= 0 && index < _history.length) {
      return _history[index].result;
    }
    return '';
  }
}
