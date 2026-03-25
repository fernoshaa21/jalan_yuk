class ActivityImageUrlMapper {
  static const String _unsplashSourceHost =
      'source.'
      'unsplash.com';
  static const String _unsplashImagesHost =
      'images.'
      'unsplash.com';

  static String resolve({
    required String? rawImageUrl,
    required String? category,
    required String baseUrl,
  }) {
    final raw = _normalize(rawImageUrl);
    if (raw == null) {
      return seededFallback(category);
    }

    final absolute = _resolveAbsolute(raw, baseUrl);
    if (absolute == null) {
      return seededFallback(category);
    }

    final parsed = Uri.tryParse(absolute);
    if (parsed == null || !_isHttpScheme(parsed)) {
      return seededFallback(category);
    }

    if (_isLegacyUnsplash(parsed)) {
      return seededFallback(category);
    }

    return Uri.encodeFull(absolute);
  }

  static String seededFallback(String? category) {
    final seed = _normalizeCategorySeed(category);
    return 'https://picsum.photos/seed/$seed-1/800/500';
  }

  static String? _resolveAbsolute(String raw, String baseUrl) {
    if (raw.startsWith('//')) {
      return 'https:$raw';
    }

    final uri = Uri.tryParse(raw);
    if (uri != null && _isHttpScheme(uri)) {
      return raw;
    }

    final baseUri = Uri.tryParse(baseUrl.trim());
    if (baseUri == null || !_isHttpScheme(baseUri)) {
      return null;
    }

    final relative = raw.startsWith('/') ? raw : '/$raw';
    return baseUri.resolve(relative).toString();
  }

  static bool _isHttpScheme(Uri uri) {
    return uri.scheme == 'http' || uri.scheme == 'https';
  }

  static bool _isLegacyUnsplash(Uri uri) {
    final host = uri.host.toLowerCase();
    return host == _unsplashSourceHost || host == _unsplashImagesHost;
  }

  static String _normalizeCategorySeed(String? category) {
    final normalized = category
        ?.trim()
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), '-')
        .replaceAll(RegExp(r'-+'), '-')
        .replaceAll(RegExp(r'^-|-$'), '');

    return (normalized == null || normalized.isEmpty) ? 'activity' : normalized;
  }

  static String? _normalize(String? value) {
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
    if (lower.isEmpty || lower == 'null' || lower == 'undefined') {
      return null;
    }

    return normalized;
  }
}
