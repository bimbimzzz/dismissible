import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TAB BAR VIEW'),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                const Tab(
                  icon: Icon(
                    Icons.person_2,
                    color: Colors.blue,
                  ),
                ),
                const Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                ),
                const Tab(
                  icon: Icon(
                    Icons.list_outlined,
                    color: Colors.blue,
                  ),
                ),
                TabBarView(
                  children: [
                    Container(
                      color: Colors.blueAccent,
                      child: const Center(
                        child: Text('TAB 1'),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 184, 185, 187),
                      child: const Center(
                        child: Text('TAB 2'),
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 7, 11, 17),
                      child: const Center(
                        child: Text('TAB 3'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
