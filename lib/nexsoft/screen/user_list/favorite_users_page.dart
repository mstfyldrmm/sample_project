import 'package:flutter/material.dart';
import 'package:sample_project/nexsoft/models/user_model.dart';
import 'package:sample_project/nexsoft/screen/user_list/user_list_view.dart';
import 'package:sample_project/nexsoft/screen/user_list/companents/user_list_tile_widget.dart';

class FavoriteUsersPage extends StatefulWidget {
  const FavoriteUsersPage({super.key, required this.favoriteUsers});
  final List<UserModel> favoriteUsers;
  @override
  State<FavoriteUsersPage> createState() => _FavoriteUsersPageState();
}

class _FavoriteUsersPageState extends State<FavoriteUsersPage> {
  late final UserListView vm;

  @override
  void initState() {
    // TODO: implement initState
    vm = UserListView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: widget.favoriteUsers.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final user = widget.favoriteUsers[index];
                  return UserListTileWidget(
                    onPressed: () => vm.toggleFavorite(user),
                    userName: user.firstName ?? '',
                    userSurname: user.lastName ?? '',
                    userCity: user.address?.city ?? '',
                    userAge: user.age ?? 0,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
