import 'package:apprentice/circle_image.dart';
import 'package:apprentice/fooderlich_theme.dart';
import 'package:flutter/material.dart';

class AuthorCard extends StatelessWidget {
  // 1
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Replace return Container(...);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // TODO 3: add alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 20,
              ),
              //2
              const SizedBox(width: 8),
              //3
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(authorName,style: FooderlichTheme.lightTextTheme.headline2),
                  Text(title,style: FooderlichTheme.lightTextTheme.headline3),
                ],
              ),

            ],
          ),
          // TODO 2: add IconButton
          IconButton(
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
            //5
            onPressed: (){
              const snackBar=SnackBar(content: Text('Favorite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}
