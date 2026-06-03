import 'package:flutter/material.dart';

void main() {
  runApp(const DigitalMarketingApp());
}

class DigitalMarketingApp extends StatelessWidget {
  const DigitalMarketingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Marketing Course',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<Map<String, String>> courses = [
    {
      'number': '1',
      'title': 'Introduction to Digital Marketing',
      'subtitle': 'Basics of Digital Marketing'
    },
    {
      'number': '2',
      'title': 'Social Media Marketing',
      'subtitle': 'Channels of Social Media Marketing'
    },
    {
      'number': '3',
      'title': 'Search Engine Optimization (SEO)',
      'subtitle': 'SEO Metrics and Strategies'
    },
    {
      'number': '4',
      'title': 'Freelancing',
      'subtitle': 'Popular Freelancing Platforms'
    },
    {
      'number': '5',
      'title': 'Content Marketing',
      'subtitle': 'Building a Social Media Brand'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital Marketing'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(courses[index]['number']!),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              title: Text(courses[index]['title']!),
              subtitle: Text(courses[index]['subtitle']!),
            ),
          );
        },
      ),
    );
  }
}
