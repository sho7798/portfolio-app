import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> projects = [
      {
        'title': 'Movie App',
        'description': 'Built with Riverpod and TMDB API.',
        'url': 'https://github.com/yourusername/movie-app',
      },
      {
        'title': 'E-commerce App',
        'description': 'Flutter + Firebase, cart + payment flow.',
        'url': 'https://github.com/yourusername/ecommerce-app',
      },
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return ListTile(
            title: Text(project['title']!),
            subtitle: Text(project['description']!),
            trailing: Icon(Icons.launch),
          );
        },
      ),
    );
  }
}
