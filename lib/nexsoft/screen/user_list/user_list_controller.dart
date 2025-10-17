import 'package:flutter/material.dart';
import 'package:sample_project/nexsoft/models/user_model.dart';
import 'package:sample_project/nexsoft/screen/user_list/favorite_users_page.dart';
import 'package:sample_project/nexsoft/screen/user_list/user_list_screen.dart';
import 'package:sample_project/nexsoft/service/post_service.dart';

class UserListController extends ChangeNotifier {
  List<UserModel>? users = [];
  List<UserModel> favorites = [];
  bool isLoading = false;
  int selectedIndex = 0;
  List<Widget> pages = [const UserListScreen(), const FavoriteUsersPage()];

  Future<void> fetchUsers() async {
    isLoading = true;
    users = await PostService().fetchAllData();
    isLoading = false;
    notifyListeners();
  }

  Future<void> toggleFavorite(UserModel user) async {
    if (favorites.contains(user)) {
      favorites.remove(user);
    } else {
      favorites.add(user);
    }
    notifyListeners();
  }

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
