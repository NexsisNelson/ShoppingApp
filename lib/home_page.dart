// ignore_for_file: unused_import

// Import necessary packages
import 'package:flutter/material.dart';
import 'package:shopping/global_variables.dart';
import 'package:shopping/product_card.dart';
import 'package:shopping/product_details_page.dart';
import 'package:shopping/product_list_.dart';
import 'package:shopping/cart_page.dart';

/// Main home page widget that provides navigation between product list and cart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/// State class for MyHomePage to manage page navigation
class _MyHomePageState extends State<MyHomePage> {
  /// Index of the currently displayed page
  int currentPage = 0;

  /// List of pages that can be navigated to (ProductList and Cart)
  List<Widget> pages = const [ProductListPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStack displays the page based on currentPage index
      body: IndexedStack(index: currentPage, children: pages),
      // Bottom navigation bar for switching between pages
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0, // Hide font labels
        unselectedFontSize: 0,
        currentIndex: currentPage, // Highlight current page
        iconSize: 34,
        // Handle page switch when navigation item is tapped
        onTap: (int newIndex) {
          setState(() {
            currentPage = newIndex; // Update current page index
          });
        },
        // Navigation items for Products and Cart
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ), // Product list icon
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_2_outlined),
            label: '',
          ), // Cart icon
        ],
      ),
    );
  }
}
