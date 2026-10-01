import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      key: PageStorageKey<String>("posts"),
      slivers: [
        SliverOverlapInjector(handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
        SliverList(
          delegate: SliverChildBuilderDelegate((context,index){
            return Card(
               margin: const EdgeInsets.all(12),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                  ),
                  title: Text('Post ${index + 1}'),
                  subtitle: const Text(
                    'This is an example profile post.',
                  ),
                ),
            );
          },
          childCount: 30,
          ),
        )
      ],

    
    );
  }
}