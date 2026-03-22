import 'package:flutter/material.dart';

import 'jalan_yuk_colors.dart';

class JalanYukQuantityStepper extends StatelessWidget {
  const JalanYukQuantityStepper({
    super.key,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
    this.min = 1,
    this.max,
  });

  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final int min;
  final int? max;

  @override
  Widget build(BuildContext context) {
    final canDec = value > min;
    final canInc = max == null || value < max!;

    return Container(
      decoration: BoxDecoration(
        color: JalanYukColors.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: JalanYukColors.border),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _stepperButton(
            icon: Icons.remove_rounded,
            enabled: canDec,
            onTap: onDecrement,
          ),
          SizedBox(
            width: 40,
            child: Text(
              '$value',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: JalanYukColors.textPrimary,
              ),
            ),
          ),
          _stepperButton(
            icon: Icons.add_rounded,
            enabled: canInc,
            onTap: onIncrement,
          ),
        ],
      ),
    );
  }

  Widget _stepperButton({
    required IconData icon,
    required bool enabled,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: 38,
          height: 38,
          child: Icon(
            icon,
            size: 18,
            color: enabled ? JalanYukColors.emerald : JalanYukColors.hint,
          ),
        ),
      ),
    );
  }
}
