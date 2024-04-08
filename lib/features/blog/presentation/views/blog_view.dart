import 'package:blog_app/features/blog/presentation/views/add_new_blog_view.dart';
import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  const BlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(AddNewBlogView.route());
            },
          ),
        ],
      ),
    );
  }
}
