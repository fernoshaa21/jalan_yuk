import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'jalan_yuk_colors.dart';

class JalanYukImageBanner extends StatefulWidget {
  const JalanYukImageBanner({
    super.key,
    required this.image,
    this.borderRadius = 16,
    this.aspectRatio = 16 / 9,
    this.height,
    this.fit = BoxFit.cover,
  });

  final String image;
  final double borderRadius;
  final double aspectRatio;
  final double? height;
  final BoxFit fit;
  static const String _fallbackAssetPath = 'assets/images/rentara_map.png';
  static const String _safeFallbackNetworkUrl =
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';

  @override
  State<JalanYukImageBanner> createState() => _JalanYukImageBannerState();
}

class _JalanYukImageBannerState extends State<JalanYukImageBanner> {
  late List<String> _networkCandidates;
  int _candidateIndex = 0;
  bool _loggedSuccess = false;

  @override
  void initState() {
    super.initState();
    _resetCandidates();
  }

  @override
  void didUpdateWidget(covariant JalanYukImageBanner oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.image != widget.image) {
      _resetCandidates();
    }
  }

  void _resetCandidates() {
    _networkCandidates = _buildNetworkCandidates(widget.image);
    _candidateIndex = 0;
    _loggedSuccess = false;
  }

  @override
  Widget build(BuildContext context) {
    final imageWidget = _buildImageWidget();

    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: widget.height != null
          ? SizedBox(
              height: widget.height,
              width: double.infinity,
              child: imageWidget,
            )
          : AspectRatio(aspectRatio: widget.aspectRatio, child: imageWidget),
    );
  }

  Widget _buildImageWidget() {
    final hasImage = widget.image.trim().isNotEmpty;
    if (!hasImage) {
      return _buildFallbackAsset();
    }

    final isNetwork = _looksLikeNetworkUrl(widget.image);
    if (!isNetwork) {
      return Image.asset(
        widget.image,
        fit: widget.fit,
        errorBuilder: _onAssetError,
      );
    }

    final activeUrl = _networkCandidates.isNotEmpty
        ? _networkCandidates[_candidateIndex]
        : widget.image;

    assert(() {
      debugPrint(
        '[ImageBanner] render url=$activeUrl original=${widget.image}',
      );
      return true;
    }());

    return Image.network(
      activeUrl,
      fit: widget.fit,
      loadingBuilder: (context, child, progress) {
        final resolved = _onLoading(context, child, progress);
        if (progress == null && !_loggedSuccess) {
          _loggedSuccess = true;
          assert(() {
            debugPrint('[ImageBanner] success url=$activeUrl');
            return true;
          }());
        }
        return resolved;
      },
      errorBuilder: (context, error, stackTrace) {
        assert(() {
          debugPrint('[ImageBanner] fail url=$activeUrl error=$error');
          return true;
        }());

        if (_candidateIndex < _networkCandidates.length - 1) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted) {
              return;
            }
            setState(() {
              _candidateIndex += 1;
            });
          });
          return _buildRetryPlaceholder();
        }
        return _buildFallbackAsset();
      },
    );
  }

  List<String> _buildNetworkCandidates(String input) {
    final raw = input.trim();
    if (raw.isEmpty) {
      return const <String>[];
    }

    final candidates = <String>[raw];
    if (raw != JalanYukImageBanner._safeFallbackNetworkUrl) {
      candidates.add(JalanYukImageBanner._safeFallbackNetworkUrl);
    }
    return candidates;
  }

  bool _looksLikeNetworkUrl(String value) {
    final text = value.trim().toLowerCase();
    return text.startsWith('http://') || text.startsWith('https://');
  }

  Widget _buildRetryPlaceholder() {
    return Container(
      color: JalanYukColors.surface,
      alignment: Alignment.center,
      child: const SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: JalanYukColors.emerald,
        ),
      ),
    );
  }

  Widget _onLoading(
    BuildContext context,
    Widget child,
    ImageChunkEvent? loadingProgress,
  ) {
    if (loadingProgress == null) {
      return child;
    }

    return Container(
      color: JalanYukColors.surface,
      alignment: Alignment.center,
      child: const SizedBox(
        width: 22,
        height: 22,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: JalanYukColors.emerald,
        ),
      ),
    );
  }

  Widget _onAssetError(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) {
    return Container(
      color: JalanYukColors.surface,
      alignment: Alignment.center,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.broken_image_outlined,
            color: JalanYukColors.hint,
            size: 34,
          ),
          SizedBox(height: 6),
          Text(
            'Image unavailable',
            style: TextStyle(
              color: JalanYukColors.textSecondary,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFallbackAsset() {
    return Image.asset(
      JalanYukImageBanner._fallbackAssetPath,
      fit: widget.fit,
      errorBuilder: _onAssetError,
    );
  }
}
