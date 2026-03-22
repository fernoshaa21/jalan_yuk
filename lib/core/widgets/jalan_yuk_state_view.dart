import 'package:flutter/material.dart';

import 'jalan_yuk_button.dart';
import 'jalan_yuk_colors.dart';

enum JalanYukStateType { loading, empty, error }

class JalanYukStateView extends StatelessWidget {
  const JalanYukStateView({
    super.key,
    required this.type,
    this.title,
    this.message,
    this.onRetry,
    this.retryLabel = 'Try Again',
  });

  final JalanYukStateType type;
  final String? title;
  final String? message;
  final VoidCallback? onRetry;
  final String retryLabel;

  @override
  Widget build(BuildContext context) {
    if (type == JalanYukStateType.loading) {
      return const Center(
        child: CircularProgressIndicator(color: JalanYukColors.emerald),
      );
    }

    final icon = type == JalanYukStateType.empty
        ? Icons.inbox_outlined
        : Icons.error_outline_rounded;

    final defaultTitle = type == JalanYukStateType.empty
        ? 'No data yet'
        : 'Something went wrong';

    final defaultMessage = type == JalanYukStateType.empty
        ? 'Try changing filters or come back later.'
        : 'Please check your connection and try again.';

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 44, color: JalanYukColors.hint),
            const SizedBox(height: 10),
            Text(
              title ?? defaultTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: JalanYukColors.textPrimary,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              message ?? defaultMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(color: JalanYukColors.textSecondary),
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 14),
              JalanYukButton(
                label: retryLabel,
                onPressed: onRetry,
                expand: false,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
