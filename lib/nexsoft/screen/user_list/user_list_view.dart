import 'package:flutter/material.dart';
import 'package:sample_project/nexsoft/models/user_model.dart';
import 'package:sample_project/nexsoft/service/post_service.dart';

class UserListView extends ChangeNotifier {
  ValueNotifier<List<UserModel>?> users = ValueNotifier([]);
  ValueNotifier<List<UserModel>> favorites = ValueNotifier<List<UserModel>>([]);
  ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  Future<List<UserModel>?> fetchUsers() async {
    isLoading.value = true;
    final data = await PostService().fetchAllData();
    users.value = data;
    isLoading.value = false;
    return users.value;
  }

  Future<List<UserModel>> toggleFavorite(UserModel user) async {
    final favList = favorites.value;
    if (favList.contains(user)) {
      favList.remove(user);
    } else {
      favList.add(user);
    }
    favorites.value = List.from(favList);
    return favorites.value;
  }
}
