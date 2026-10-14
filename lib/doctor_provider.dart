import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final IconData icon;

  CategoryModel({required this.name, required this.icon});
}

class DoctorModel {
  final String name;
  final String hospital;
  final double rating;
  final String category;

  DoctorModel({
    required this.name,
    required this.hospital,
    required this.rating,
    required this.category,
  });
}

class DoctorProvider extends ChangeNotifier {
  final List<CategoryModel> categories = [
    CategoryModel(name: "Cardiologist", icon: Icons.favorite),
    CategoryModel(name: "Dermatologist", icon: Icons.medical_services),
    CategoryModel(name: "Dentist", icon: Icons.health_and_safety),
    CategoryModel(name: "Neurologist", icon: Icons.psychology),
    CategoryModel(name: "Urologist", icon: Icons.monitor_heart),
  ];

  final List<DoctorModel> doctors = [
    DoctorModel(
      name: "Dr. Ahmed Ali",
      category: "Cardiologist",
      hospital: "King Fahad Hospital",
      rating: 4.8,
      
    ),

    DoctorModel(
      name: "Dr. Sarah Hassan",
      category: "Cardiologist",
      hospital: "Saudi German Hospital",
      rating: 4.9,
      
    ),

    DoctorModel(
      name: "Dr. Mohamed Saleh",
      category: "Dermatologist",
      hospital: "Dammam Medical Center",
      rating: 4.7,
      
    ),

    DoctorModel(
      name: "Dr. Nour",
      category: "Dentist",
      hospital: "Smile Clinic",
      rating: 4.9,
      
    ),

    DoctorModel(
      name: "Dr. Khaled",
      category: "Neurologist",
      hospital: "National Hospital",
      rating: 4.6,
      
    ),
    DoctorModel(
      name: "Dr. Salem",
      category: "Urologist",
      hospital: "King Fahad Hospital",
      rating: 4.9,
    ),
  ];

  List<DoctorModel> getDoctorsByCategory(String category) {
    return doctors.where((doctor) => doctor.category == category).toList();
  }
}
