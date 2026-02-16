// Import Material Design package
import 'package:flutter/material.dart';

/// Reusable widget to display a product card
/// Shows product title, price, and image in a styled card
class ProductCard extends StatelessWidget {
  /// Product title/name
  final String title;

  /// Product price
  final double price;

  /// Path to product image
  final String image;

  /// Background color of the card
  final Color backgroundColor;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    // Main container with rounded corners and custom color
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // Rounded corners
        color: backgroundColor, // Card background color
      ),
      margin: EdgeInsets.all(10.0), // Space between cards
      padding: const EdgeInsets.all(8.0), // Internal padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product title using theme style
          Text(title, style: Theme.of(context).textTheme.titleMedium),

          SizedBox(height: 5), // Spacing
          // Product price formatted with currency symbol
          Text('\$ $price', style: Theme.of(context).textTheme.bodySmall),

          SizedBox(height: 5), // Spacing
          // Product image centered
          Center(child: Image(image: AssetImage(image), height: 175)),
        ],
      ),
    );
  }
}
