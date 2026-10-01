import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/posts.dart';
import 'package:flutter_application_1/pages/tagged.dart';

class HomePage extends StatefulWidget {
const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context,  innerBoxIsScrolled){
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                expandedHeight: 300,
                pinned: true,
                forceElevated: innerBoxIsScrolled,
                flexibleSpace: FlexibleSpaceBar(
                  
                  background: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent
                  ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                            radius: 45,
                            child: Icon(
                              Icons.person,
                              size: 50,
                              
                            ),
                          ),

                      SizedBox(height: 16),
                      Text(
                            'Abelom',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                      SizedBox(height: 8),

                      Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),

                    ],
                  ),
                ),
              ),
              bottom: TabBar(tabs:[
                Tab(icon: Icon(Icons.grid_on,color: Colors.black,),text: 'posts',),
                Tab(icon: Icon(Icons.person,color: Colors.black,), text: 'tagged',)

              ]),

            ),
            ),
          ];
        }, 
        body: TabBarView(children: [
          Posts(),
          Tagged()
        ])
        ),

    
    );
  }
}