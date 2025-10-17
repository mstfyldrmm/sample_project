import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/nexsoft/screen/user_list/user_list_controller.dart';
import 'package:sample_project/nexsoft/screen/user_list/companents/user_list_tile_widget.dart';

class FavoriteUsersPage extends StatefulWidget {
  const FavoriteUsersPage({super.key});

  @override
  State<FavoriteUsersPage> createState() => _FavoriteUsersPageState();
}

class _FavoriteUsersPageState extends State<FavoriteUsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Consumer<UserListController>(
              builder: (context, controller, child) {
                return Expanded(
                  child: ListView.separated(
                    itemCount: controller.favorites.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      final user = controller.favorites[index];
                      return UserListTileWidget(
                        imagePath: controller.users?[index].image ?? '',
                        isFavorite: true,
                        onPressed: () => controller.toggleFavorite(user),
                        userName: user.firstName ?? '',
                        userSurname: user.lastName ?? '',
                        userCity: user.address?.city ?? '',
                        userAge: user.age ?? 0,
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
