import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('What\'s App'),
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Call\'s')),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: '1',
                  child: Text('New group'),
                ),
                const PopupMenuItem(
                  value: '2',
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  value: '3',
                  child: Text('Logout'),
                ),
              ],
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: TabBarView(children: [
          const Text('Camera'),
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://static.remove.bg/remove-bg-web/c4b29bf4b97131238fda6316e24c9b3606c18000/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg'),
                ),
                title: Text('Zara'),
                subtitle: Text('I Love You Dear'),
                trailing: Text('9/16/2022'),
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://static.remove.bg/remove-bg-web/c4b29bf4b97131238fda6316e24c9b3606c18000/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg'),
                  ),
                ),
                title: const Text('Zara'),
                subtitle: const Text('35 mins ago'),
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://static.remove.bg/remove-bg-web/c4b29bf4b97131238fda6316e24c9b3606c18000/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg'),
                ),
                title: const Text('Zara'),
                subtitle: Text(index / 3 == 1
                    ? 'You missed a audio call'
                    : 'You Missed a Vedio Call'),
                trailing: Icon(
                    index / 3 == 1 ? Icons.phone : Icons.video_call_outlined),
              );
            },
          ),
        ]),
      ),
    );
  }
}
