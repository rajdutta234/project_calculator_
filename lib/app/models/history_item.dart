class HistoryItem {
  final String expression;
  final String result;
  final DateTime timestamp;
  
  HistoryItem({
    required this.expression,
    required this.result,
    required this.timestamp,
  });
  
  @override
  String toString() {
    return '$expression = $result';
  }
}
