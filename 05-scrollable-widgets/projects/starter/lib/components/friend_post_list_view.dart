import 'package:flutter/material.dart';
import 'package:fooderlich/components/friend_post_tile.dart';

import '../models/models.dart';
import 'components.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPosts;

  const FriendPostListView({
    Key? key,
    required this.friendPosts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 0,
      ),
      child: Column(
        children: [
          const Text('Social Chefs 👩‍🍳'),
          const SizedBox(height: 16),
          ListView.separated(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final post = friendPosts[index];
              return FriendPostTile(post: post);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16.0);
            },
            itemCount: friendPosts.length,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}