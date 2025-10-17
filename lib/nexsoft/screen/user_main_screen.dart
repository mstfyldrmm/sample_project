import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/nexsoft/screen/user_list/user_list_controller.dart';

class UserMainScreen extends StatelessWidget {
  const UserMainScreen({super.key});

  @override
  ///PageView incele
  Widget build(BuildContext context) {
    return Consumer<UserListController>(
      builder: (context, controller, _) {
        return Scaffold(
          body: controller.pages[controller.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            onTap: controller.onItemTapped,
            elevation: 0,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Users'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite Users'),
            ],
          ),
        );
      },
    );
  }
}
