import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/nexsoft/screen/user_list/user_list_controller.dart';
import 'package:sample_project/nexsoft/screen/user_list/companents/user_list_tile_widget.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});
  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (context.read<UserListController>().users!.isEmpty) {
        await context.read<UserListController>().fetchUsers();
      }
    });
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
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Find Friends'),
                  Consumer<UserListController>(
                    builder: (context, controller, child) {
                      return Text(
                        'Favorites Users: ${controller.favorites.length}',
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Consumer<UserListController>(
              builder: (context, controller, child) {
                return Expanded(
                  child: controller.isLoading
                      ? Center(child: CircularProgressIndicator())
                      : ListView.separated(
                          itemCount: controller.users!.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                          itemBuilder: (context, index) {
                            final user = controller.users![index];
                            return UserListTileWidget(
                              imagePath:
                                  controller.users?[index].image ??
                                  'assets/images/avatar.png',
                              isFavorite: controller.favorites.contains(user),
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
