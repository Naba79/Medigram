import 'package:flutter/material.dart';
import 'category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Medigram")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: [
            _card(
              context,
              icon: Icons.medical_services,
              title: "Book Doctor",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CategoryScreen()),
                );
              },
            ),

            _card(context, icon: Icons.medication, title: "Buy Medicine"),

            _card(context, icon: Icons.local_hospital, title: "Ambulance"),

            _card(context, icon: Icons.bloodtype, title: "Blood Bank"),

            _card(context, icon: Icons.help_outline, title: "FAQ"),
          ],
        ),
      ),
    );
  }

  Widget _card(
    BuildContext context, {
    required IconData icon,
    required String title,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 70, color: Theme.of(context).primaryColor),
            const SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
