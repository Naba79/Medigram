import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'doctor_provider.dart';

class DoctorListScreen extends StatelessWidget {
  final String categoryName;

  const DoctorListScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DoctorProvider>(context);

    final doctors = provider.getDoctorsByCategory(categoryName);

    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: doctors.length,

        itemBuilder: (context, index) {
          final doctor = doctors[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),

            child: ListTile(
              leading: const CircleAvatar(
                radius: 28,
                child: Icon(Icons.person),
              ),

              title: Text(doctor.name),

              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(doctor.category),
                  Text(doctor.hospital),

                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 18),

                      const SizedBox(width: 4),

                      Text(doctor.rating.toString()),
                    ],
                  ),
                ],
              ),

              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
