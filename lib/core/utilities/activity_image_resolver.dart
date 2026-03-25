import '../../config.dart';

class ActivityImageSource {
  const ActivityImageSource({required this.path, required this.isNetwork});

  final String path;
  final bool isNetwork;
}

class ActivityImageResolver {
  static const String fallbackAsset = 'assets/images/rentara_map.png';

  static String resolvePath(
    String? imageUrl, {
    String? baseUrl,
    String fallbackAssetPath = fallbackAsset,
  }) {
    return resolve(
      imageUrl,
      baseUrl: baseUrl,
      fallbackAssetPath: fallbackAssetPath,
    ).path;
  }

  static ActivityImageSource resolve(
    String? imageUrl, {
    String? baseUrl,
    String fallbackAssetPath = fallbackAsset,
  }) {
    final raw = _normalizeRaw(imageUrl);
    if (raw == null) {
      return ActivityImageSource(path: fallbackAssetPath, isNetwork: false);
    }

    final uri = Uri.tryParse(raw);
    if (uri != null && (uri.scheme == 'http' || uri.scheme == 'https')) {
      final safeUrl = Uri.encodeFull(raw);
      return ActivityImageSource(path: safeUrl, isNetwork: true);
    }

    if (raw.startsWith('//')) {
      final safeUrl = Uri.encodeFull('https:$raw');
      return ActivityImageSource(path: safeUrl, isNetwork: true);
    }

    if (raw.startsWith('assets/')) {
      return ActivityImageSource(path: raw, isNetwork: false);
    }

    final resolvedBaseUrl = (baseUrl ?? AppConfig.baseUrl).trim();
    final baseUri = Uri.tryParse(resolvedBaseUrl);
    if (baseUri != null &&
        (baseUri.scheme == 'http' || baseUri.scheme == 'https')) {
      final normalizedRelative = raw.startsWith('/') ? raw : '/$raw';
      final resolved = baseUri.resolve(normalizedRelative).toString();
      final safeResolved = Uri.encodeFull(resolved);
      return ActivityImageSource(path: safeResolved, isNetwork: true);
    }

    return ActivityImageSource(path: fallbackAssetPath, isNetwork: false);
  }

  static String? _normalizeRaw(String? value) {
    final trimmed = value?.trim();
    if (trimmed == null || trimmed.isEmpty) {
      return null;
    }

    var normalized = trimmed;
    if ((normalized.startsWith('"') && normalized.endsWith('"')) ||
        (normalized.startsWith("'") && normalized.endsWith("'"))) {
      normalized = normalized.substring(1, normalized.length - 1).trim();
    }

    normalized = normalized.replaceAll('\\/', '/').replaceAll('\\', '/');
    final lower = normalized.toLowerCase();
    if (lower == 'null' || lower == 'undefined') {
      return null;
    }

    return normalized;
  }
}
