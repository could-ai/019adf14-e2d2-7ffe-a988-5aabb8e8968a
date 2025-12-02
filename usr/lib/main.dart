import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:couldai_user_app/utils/colors.dart';
import 'package:couldai_user_app/screens/splash_screen.dart';
import 'package:couldai_user_app/screens/main_screen.dart';
import 'package:couldai_user_app/screens/seller/seller_dashboard_screen.dart';
import 'package:couldai_user_app/screens/seller/manage_products_screen.dart';
import 'package:couldai_user_app/screens/seller/seller_orders_screen.dart';
import 'package:couldai_user_app/screens/seller/seller_analytics_screen.dart';
import 'package:couldai_user_app/screens/seller/seller_payments_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eBidMart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: AppColors.background,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/main': (context) => const MainScreen(),
        '/seller/dashboard': (context) => const SellerDashboardScreen(),
        '/seller/products': (context) => const ManageProductsScreen(),
        '/seller/orders': (context) => const SellerOrdersScreen(),
        '/seller/analytics': (context) => const SellerAnalyticsScreen(),
        '/seller/payments': (context) => const SellerPaymentsScreen(),
      },
    );
  }
}
