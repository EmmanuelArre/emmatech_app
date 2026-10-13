import 'package:flutter/material.dart';
import '../models/product.dart';
import '../theme/app_theme.dart';
import '../widgets/product_image.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  final bool isFavorite;

  const DetailScreen({
    super.key,
    required this.product,
    this.isFavorite = false,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late bool _favorite = widget.isFavorite;

  @override
  Widget build(BuildContext context) {
    final p = widget.product;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) Navigator.pop(context, _favorite);
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              pinned: true,
              actions: [
                IconButton(
                  icon: Icon(_favorite ? Icons.favorite : Icons.favorite_border),
                  onPressed: () => setState(() => _favorite = !_favorite),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: 'product-${p.id}',
                  child: ProductImage(product: p, height: 300),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Chip(
                      label: Text(p.category),
                      backgroundColor: AppTheme.secondary.withValues(alpha: 0.2),
                    ),
                    const SizedBox(height: 8),
                    Text(p.name, style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 8),
                    Text(
                      '\$${p.price.toStringAsFixed(2)} MXN',
                      style: const TextStyle(
                        color: AppTheme.primary,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _info(Icons.star, '${p.rating}', 'Calificación', Colors.amber),
                        _info(Icons.inventory_2, '${p.stock}', 'En stock', AppTheme.primary),
                        _info(Icons.verified_user, p.warranty, 'Garantía', Colors.green),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Text('Descripción',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 8),
                    Text(p.description,
                        style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 24),
                    Text('Especificaciones',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 8),
                    ...p.specs.map(
                      (s) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Row(
                          children: [
                            const Icon(Icons.check_circle,
                                size: 18, color: AppTheme.secondary),
                            const SizedBox(width: 8),
                            Expanded(child: Text(s)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 90),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: FilledButton.icon(
              style: FilledButton.styleFrom(
                minimumSize: const Size.fromHeight(52),
                backgroundColor: AppTheme.primary,
              ),
              icon: const Icon(Icons.add_shopping_cart),
              label: const Text('Agregar al carrito'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${p.name} agregado al carrito')),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _info(IconData icon, String value, String label, Color color) {
    return Column(
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.black54)),
      ],
    );
  }
}
