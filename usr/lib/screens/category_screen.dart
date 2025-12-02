import 'package:flutter/material.dart';
import 'package:couldai_user_app/utils/colors.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories', style: TextStyle(color: Colors.white)),
        backgroundColor: AppColors.primary,
      ),
      body: Row(
        children: [
          // Left Side - Main Categories
          Container(
            width: 100,
            color: Colors.grey[200],
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  color: index == 0 ? Colors.white : Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    children: [
                      Icon(Icons.category, color: index == 0 ? AppColors.primary : Colors.grey),
                      const SizedBox(height: 5),
                      Text(
                        'Category $index',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: index == 0 ? AppColors.primary : Colors.black,
                          fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Right Side - Sub Categories
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Category 0',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: AppColors.primary.withOpacity(0.1),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.image, color: AppColors.primary),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Sub Cat $index',
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
