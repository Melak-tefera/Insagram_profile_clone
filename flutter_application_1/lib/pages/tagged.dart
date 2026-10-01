import 'package:flutter/material.dart';

class Tagged extends StatefulWidget {
const Tagged({super.key});

  @override
  State<Tagged> createState() => _TaggedState();
}

class _TaggedState extends State<Tagged> {
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      key: const PageStorageKey<String>('tagged'),
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
            context,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(12),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  child: Center(
                    child: Text(
                      'Tagged ${index + 1}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
              childCount: 30,
            ),
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
          ),
        ),
      ],
    );
  }
}