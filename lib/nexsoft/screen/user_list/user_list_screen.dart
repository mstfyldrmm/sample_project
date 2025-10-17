import 'package:flutter/material.dart';
import 'package:sample_project/nexsoft/models/user_model.dart';
import 'package:sample_project/nexsoft/screen/user_list/user_list_view.dart';
import 'package:sample_project/nexsoft/screen/user_list/companents/user_list_tile_widget.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});
  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  late final UserListView vm;

  @override
  void initState() {
    // TODO: implement initState
    vm = UserListView();
    vm.fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.deepOrange,
              height: 50,
              width: double.infinity,
              child: Text('Find Friends'),
            ),
            SizedBox(height: 20),
            ValueListenableBuilder<bool>(
              valueListenable: vm.isLoading,
              builder: (context, isLoading, _) {
                if (isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return Expanded(
                    child: ValueListenableBuilder<List<UserModel>?>(
                      valueListenable: vm.users,
                      builder: (context, users, _) {
                        return ListView.separated(
                          itemCount: users!.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                          itemBuilder: (context, index) {
                            final user = users[index];
                            return UserListTileWidget(
                              onPressed: () => vm.toggleFavorite(user),
                              userName: user.firstName ?? '',
                              userSurname: user.lastName ?? '',
                              userCity: user.address?.city ?? '',
                              userAge: user.age ?? 0,
                            );
                          },
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
