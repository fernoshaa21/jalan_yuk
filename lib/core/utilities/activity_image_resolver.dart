import '../../config.dart';

class ActivityImageSource {
  const ActivityImageSource({
    required this.path,
    required this.isNetwork,
    required this.raw,
  });

  final String path;
  final bool isNetwork;
  final String? raw;
}

class ActivityImageResolver {
  static const String fallbackAsset = 'assets/images/rentara_map.png';

  static ActivityImageSource resolve(
    String? imageUrl, {
    String fallbackAssetPath = fallbackAsset,
  }) {
    final raw = _normalizeRaw(imageUrl);
    final normalizedLower = raw?.toLowerCase();
    if (raw == null || raw.isEmpty) {
      return ActivityImageSource(
        path: fallbackAssetPath,
        isNetwork: false,
        raw: imageUrl,
      );
    }

    if (normalizedLower == 'null' || normalizedLower == 'undefined') {
      return ActivityImageSource(
        path: fallbackAssetPath,
        isNetwork: false,
        raw: imageUrl,
      );
    }

    final uri = Uri.tryParse(raw);
    if (uri != null && (uri.scheme == 'http' || uri.scheme == 'https')) {
      final safeUrl = Uri.encodeFull(raw);
      return ActivityImageSource(path: safeUrl, isNetwork: true, raw: imageUrl);
    }

    if (raw.startsWith('//')) {
      final safeUrl = Uri.encodeFull('https:$raw');
      return ActivityImageSource(path: safeUrl, isNetwork: true, raw: imageUrl);
    }

    if (raw.startsWith('assets/')) {
      return ActivityImageSource(path: raw, isNetwork: false, raw: imageUrl);
    }

    final baseUrl = AppConfig.baseUrl.trim();
    final baseUri = Uri.tryParse(baseUrl);
    if (baseUri != null &&
        (baseUri.scheme == 'http' || baseUri.scheme == 'https')) {
      final normalizedRelative = raw.startsWith('/') ? raw : '/$raw';
      final resolved = baseUri.resolve(normalizedRelative).toString();
      final safeResolved = Uri.encodeFull(resolved);
      return ActivityImageSource(
        path: safeResolved,
        isNetwork: true,
        raw: imageUrl,
      );
    }

    return ActivityImageSource(
      path: fallbackAssetPath,
      isNetwork: false,
      raw: imageUrl,
    );
  }

  static String? _normalizeRaw(String? value) {
    final trimmed = value?.trim();
    if (trimmed == null || trimmed.isEmpty) {
      return trimmed;
    }

    var normalized = trimmed;
    if ((normalized.startsWith('"') && normalized.endsWith('"')) ||
        (normalized.startsWith("'") && normalized.endsWith("'"))) {
      normalized = normalized.substring(1, normalized.length - 1).trim();
    }

    normalized = normalized.replaceAll('\\/', '/').replaceAll('\\', '/');
    return normalized;
  }
}
