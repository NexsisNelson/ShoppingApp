// ignore_for_file: unused_import

// Import necessary Material Design and provider packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/cart_provider.dart';
import 'package:shopping/global_variables.dart';
import 'package:shopping/home_page.dart';
import 'package:shopping/product_details_page.dart';

/// Entry point of the application
void main() {
  runApp(const MyApp());
}

/// Root widget of the application
/// Configures the MaterialApp with global theme and state management
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// Builds the root widget with Material Design theme and Provider setup
  @override
  Widget build(BuildContext context) {
    // Initialize CartProvider for state management across the app
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        // Define custom theme for the entire app
        theme: ThemeData(
          fontFamily: 'Poppins', // Set custom font family
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ), // Color scheme based on purple
          // Configure text field styling
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          // Define custom text styles for different text types
          textTheme: TextTheme(
            titleMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ), // Large titles
            bodySmall: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ), // Body text
          ),
          useMaterial3: true, // Enable Material 3 design
        ),
        debugShowCheckedModeBanner: false, // Hide debug banner
        // Set home page as the initial screen
        home: MyHomePage(),
      ),
    );
  }
}
