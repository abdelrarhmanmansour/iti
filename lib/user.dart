import 'package:flutter/material.dart';
import 'package:untitled6/Dio/APIProvider.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  List<APIProvider> users = [];
  bool isLoading = true;
  Future<void> getUsersFromApi() async {
    users = await APIProvider().getUser();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getUsersFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: isLoading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : ListView.builder(
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('${users[index].toos}'),
              );
            },
            ),
        );
    }
}

