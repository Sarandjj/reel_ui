import 'package:flutter/material.dart';
import 'package:level_2/pages/live_page/following.dart';
import 'package:level_2/pages/live_page/for_you.dart';
import 'package:level_2/pages/live_page/live.dart';

class LivePage extends StatelessWidget {
  const LivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.black,
          appBar: AppBar(
            toolbarHeight: 10,
            elevation: 0,
            backgroundColor: Colors.transparent,
            bottom: const TabBar(
                labelColor: Colors.white,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                indicatorColor: Colors.yellow,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.tab,
                padding: EdgeInsets.all(10),
                tabs: [
                  Text(
                    'Live',
                  ),
                  Text('For You'),
                  Text('Following')
                ]),
          ),
          body: const TabBarView(children: [Live(), ForYou(), Following()])),
    );
  }
}
