import 'package:flutter/material.dart';

class Firstscreen extends StatefulWidget {
  static const String id = 'first_screen';
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('whatsapp'),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('chats'),
            ),
            Tab(
              child: Text('status'),
            ),
            Tab(
              child: Text('calls'),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => const [
                      PopupMenuItem(
                        value: '1',
                        child: Text('Advertise'),
                      ),
                      PopupMenuItem(
                        value: '2',
                        child: Text('Business tools'),
                      ),
                      PopupMenuItem(
                        value: '3',
                        child: Text('New groups'),
                      ),
                      PopupMenuItem(
                        value: '4',
                        child: Text('New broadcast'),
                      ),
                      PopupMenuItem(
                        value: '5',
                        child: Text('ommunicaties'),
                      ),
                      PopupMenuItem(
                        value: '6',
                        child: Text('Lables'),
                      ),
                      PopupMenuItem(
                        value: '7',
                        child: Text('Starred messages'),
                      ),
                      PopupMenuItem(
                        value: '8',
                        child: Text('Settings'),
                      ),
                    ]),
            const SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            const Text('camra'),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  title: Text('Adnan khalil'),
                  subtitle: Text('where is my dog'),
                  trailing: Text('3:30'),
                );
              },
            ),
            //  Text('updates'),
            const Text('status'),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                        )),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                  ),
                  title: const Text('Adnan khalil'),
                  subtitle: const Text('5am a go'),
                );
              },
            ),
            const Text('calls'),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  title: const Text('Adnan khalil'),
                  subtitle: Text(index / 2 == 0 ? 'you missed call' : 'call time 2:30'),
                  trailing: Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
