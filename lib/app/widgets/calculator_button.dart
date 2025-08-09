// app/widgets/calculator_button.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final bool isOperator;
  final bool isFunction;

  const CalculatorButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
    this.isOperator = false,
    this.isFunction = false,
  });

  @override
  State<CalculatorButton> createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color getBackgroundColor() {
      if (widget.backgroundColor != null) return widget.backgroundColor!;
      if (widget.isOperator) return const Color(0xFF6366F1);
      if (widget.isFunction) return const Color(0xFF8B5CF6);
      return const Color(0xFFF1F5F9);
    }

    Color getTextColor() {
      if (widget.textColor != null) return widget.textColor!;
      if (widget.isOperator || widget.isFunction) return Colors.white;
      return const Color(0xFF1E293B);
    }

    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        // If width is much larger than height, make the button pill-shaped
        double width = widget.width ?? 80;
        double height = widget.height ?? 80;
        double borderRadius = 20;
        if (width > 2 * height) {
          height = 60;
          borderRadius = 30;
        }
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Container(
            width: width,
            height: height,
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  getBackgroundColor(),
                  getBackgroundColor().withValues(alpha: 0.8),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: getBackgroundColor().withValues(alpha: 0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
                BoxShadow(
                  color: Colors.white.withValues(alpha: 0.1),
                  blurRadius: 1,
                  offset: const Offset(0, -1),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  _animationController.forward().then((_) {
                    _animationController.reverse();
                  });
                  widget.onPressed();
                },
                borderRadius: BorderRadius.circular(borderRadius),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withValues(alpha: 0.1),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.text,
                      style: GoogleFonts.poppins(
                        fontSize: widget.text.length > 2 ? 16 : 24,
                        fontWeight: FontWeight.w600,
                        color: getTextColor(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
