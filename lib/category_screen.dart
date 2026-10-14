import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'doctor_provider.dart';
import 'doctor_list_screen.dart';


class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DoctorProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Select Category")),

      body: GridView.builder(
        padding: const EdgeInsets.all(16),

        itemCount: provider.categories.length,

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),

        itemBuilder: (context, index) {
          final category = provider.categories[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DoctorListScreen(categoryName: category.name),
                ),
              );
            },

            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    category.icon, 
                    size: 40,
                    color: Theme.of(context).primaryColor,
                    ),

                  const SizedBox(height: 10),

                  Text(category.name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
