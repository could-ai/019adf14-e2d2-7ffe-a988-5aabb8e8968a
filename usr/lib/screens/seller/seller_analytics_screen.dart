import 'package:flutter/material.dart';
import 'package:couldai_user_app/utils/colors.dart';

class SellerAnalyticsScreen extends StatelessWidget {
  const SellerAnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analytics', style: TextStyle(color: AppColors.white)),
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      body: const Center(
        child: Text('Analytics Screen - Coming Soon!'),
      ),
    );
  }
}
