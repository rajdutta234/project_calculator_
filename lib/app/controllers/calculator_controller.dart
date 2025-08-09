import 'dart:math';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  final _display = '0'.obs;
  final _expression = ''.obs;
  final _isScientific = false.obs;
  final _isNewCalculation = true.obs;
  
  String get display => _display.value;
  String get expression => _expression.value;
  bool get isScientific => _isScientific.value;
  bool get isNewCalculation => _isNewCalculation.value;
  
  void setDisplay(String value) {
    if (_isNewCalculation.value) {
      _display.value = value;
      _isNewCalculation.value = false;
    } else {
      if (_display.value == '0' && value != '.') {
        _display.value = value;
      } else {
        _display.value += value;
      }
    }
  }
  
  void clear() {
    _display.value = '0';
    _expression.value = '';
    _isNewCalculation.value = true;
  }
  
  void backspace() {
    if (_display.value.length > 1) {
      _display.value = _display.value.substring(0, _display.value.length - 1);
    } else {
      _display.value = '0';
      _isNewCalculation.value = true;
    }
  }
  
  void addOperator(String operator) {
    if (_display.value != '0' || _expression.value.isNotEmpty) {
      _expression.value += _display.value + operator;
      _display.value = '0';
      _isNewCalculation.value = true;
    }
  }
  
  void calculate() {
    try {
      String fullExpression = _expression.value + _display.value;
      if (fullExpression.isNotEmpty) {
        GrammarParser p = GrammarParser();
        Expression exp = p.parse(fullExpression);
        ContextModel cm = ContextModel();
        double result = exp.evaluate(EvaluationType.REAL, cm);
        
        _display.value = result.toString();
        if (result == result.toInt()) {
          _display.value = result.toInt().toString();
        }
        _expression.value = '';
        _isNewCalculation.value = true;
      }
    } catch (e) {
      _display.value = 'Error';
      _expression.value = '';
      _isNewCalculation.value = true;
    }
  }
  
  void toggleScientific() {
    _isScientific.value = !_isScientific.value;
  }
  
  void scientificFunction(String function) {
    try {
      double value = double.parse(_display.value);
      double result = 0;
      
      switch (function) {
        case 'sin':
          result = sin(_degreesToRadians(value));
          break;
        case 'cos':
          result = cos(_degreesToRadians(value));
          break;
        case 'tan':
          result = tan(_degreesToRadians(value));
          break;
        case 'log':
          result = log(value) / ln10;
          break;
        case 'ln':
          result = log(value);
          break;
        case 'sqrt':
          result = sqrt(value);
          break;
        case 'factorial':
          result = _factorial(value.toInt()).toDouble();
          break;
        case 'square':
          result = value * value;
          break;
        case 'cube':
          result = value * value * value;
          break;
        case 'inverse':
          result = 1 / value;
          break;
      }
      
      _display.value = result.toString();
      if (result == result.toInt()) {
        _display.value = result.toInt().toString();
      }
      _isNewCalculation.value = true;
    } catch (e) {
      _display.value = 'Error';
      _isNewCalculation.value = true;
    }
  }
  
  double _degreesToRadians(double degrees) {
    return degrees * (pi / 180);
  }
  
  int _factorial(int n) {
    if (n <= 1) return 1;
    return n * _factorial(n - 1);
  }
  
  void addConstant(String constant) {
    switch (constant) {
      case 'π':
        _display.value = pi.toString();
        break;
      case 'e':
        _display.value = e.toString();
        break;
    }
    _isNewCalculation.value = true;
  }
}
