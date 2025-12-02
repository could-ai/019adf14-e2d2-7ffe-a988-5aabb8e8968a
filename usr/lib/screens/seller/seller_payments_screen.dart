import 'package:flutter/material.dart';
import 'package:couldai_user_app/utils/colors.dart';

class SellerPaymentsScreen extends StatelessWidget {
  const SellerPaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments', style: TextStyle(color: AppColors.white)),
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      body: const Center(
        child: Text('Payments Screen - Coming Soon!'),
      ),
    );
  }
}
