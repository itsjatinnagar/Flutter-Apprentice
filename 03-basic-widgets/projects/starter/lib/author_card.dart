import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  ),
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              const snackBar = SnackBar(content: Text('Favourite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: const Icon(Icons.favorite_outline),
            iconSize: 30,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}
