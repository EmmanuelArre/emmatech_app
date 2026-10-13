import 'package:flutter/material.dart';
import '../models/product.dart';
import '../theme/app_theme.dart';

/// Imagen del producto con respaldo (icono) si no carga.
class ProductImage extends StatelessWidget {
  final Product product;
  final double? height;
  final BoxFit fit;

  const ProductImage({
    super.key,
    required this.product,
    this.height,
    this.fit = BoxFit.cover,
  });

  Widget _fallback() => Container(
        height: height,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppTheme.primary, AppTheme.secondary],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Icon(product.icon, size: 56, color: Colors.white),
      );

  @override
  Widget build(BuildContext context) {
    return Image.network(
      product.imageUrl,
      height: height,
      width: double.infinity,
      fit: fit,
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return SizedBox(
          height: height,
          child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
        );
      },
      errorBuilder: (context, error, stack) => _fallback(),
    );
  }
}
