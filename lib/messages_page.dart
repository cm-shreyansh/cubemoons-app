import 'package:cubemoons/core/theme.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages', style: Theme.of(context).textTheme.titleLarge),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ]
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Text('Recents', style: Theme.of(context).textTheme.bodyLarge,),
          ),
          Container(
            height:100,
            padding: EdgeInsets.all(5),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:[
                _buildRecentContact(context, 'Anyone Cool'),
                _buildRecentContact(context, 'Cool Boi Lokesh'),
                _buildRecentContact(context, 'Nitesh Dude'),
                _buildRecentContact(context, 'Someone No-one'),
                _buildRecentContact(context, 'No one'),
                _buildRecentContact(context, 'This is it'),
              ]
            )
          )
        ],
      ),
    );
  }
}

Widget _buildRecentContact(BuildContext context, String contactName) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
        ),
        SizedBox(height: 5,),
        Text(
          contactName,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ]
    )
  );
}

Widget _buildContactListTile(BuildContext context) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    leading: CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage('https://i.pravatar.cc/150'),
    ),
    title: Text("This is it", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    subtitle: Text("shreyanshsahu.dev@gmail.com", style: TextStyle(color: Colors.grey, fontSize: FontSizes.small)),
  );
}
