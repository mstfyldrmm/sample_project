import 'package:flutter/material.dart';

class UserListTileWidget extends StatelessWidget {
  const UserListTileWidget({
    super.key,
    required this.userName,
    required this.userSurname,
    required this.userCity,
    required this.userAge,
    required this.onPressed,
    required this.isFavorite,
    required this.imagePath,
  });
  final String userName;
  final String userSurname;
  final String userCity;
  final String imagePath;
  final int userAge;
  final VoidCallback onPressed;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(child: Image.network(imagePath)),
              SizedBox(width: 20),
              Column(
                children: [
                  Text("$userName $userSurname"),
                  Text(userCity),
                  Text("$userAge"),
                ],
              ),
            ],
          ),
          IconButton.outlined(
            onPressed: onPressed,
            icon: isFavorite
                ? Icon(Icons.favorite, color: Colors.red)
                : Icon(Icons.favorite_outline),
          ),
        ],
      ),
    );
  }
}
