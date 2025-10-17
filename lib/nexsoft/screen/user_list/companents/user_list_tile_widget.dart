import 'package:flutter/material.dart';

class UserListTileWidget extends StatelessWidget {
  const UserListTileWidget({
    super.key,
    required this.userName,
    required this.userSurname,
    required this.userCity,
    required this.userAge,
    required this.onPressed,
  });
  final String userName;
  final String userSurname;
  final String userCity;
  final int userAge;
  final VoidCallback onPressed;

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
              CircleAvatar(),
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
            icon: Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),
    );
  }
}
