import 'package:flutter/material.dart';
import 'package:couldai_user_app/utils/colors.dart';

class SellerOrdersScreen extends StatelessWidget {
  const SellerOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Orders', style: TextStyle(color: AppColors.white)),
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      body: const Center(
        child: Text('Manage Orders Screen - Coming Soon!'),
      ),
    );
  }
}
