import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> projects = [
      {
        'title': 'Ecommence Website',
        'description': 'Built with Wordpress and Woocommence.',
        'url': 'https://github.com/yourusername/movie-app',
      },
      {
        'title': 'Streaming App – Built with Flutter + GetX + Firebase',
        'description':
            'A modern, high-performance video streaming application developed with Flutter. The app provides a seamless viewing experience, real-time push notifications, and secure payment handling for premium content access.',
        'url': 'https://github.com/yourusername/ecommerce-app',
      },
      {
        'title': 'Travel App',
        'description':
            'Built with Flutter and GetX state management. Also used  Firebase for push notification.',
        'url': 'https://github.com/yourusername/movie-app',
      },
      {
        'title': 'Gym App',
        'description':
            'Build with Flutter and GetX state management.Also used Firebase for push notification.',
        'url': 'https://github.com/yourusername/ecommerce-app',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text(
            'Projects',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return ListTile(
            title: Text(project['title']!),
            subtitle: Text(project['description']!),
            leading: Icon(Icons.apple),
            trailing: Icon(Icons.launch),
          );
        },
      ),
    );
  }
}
