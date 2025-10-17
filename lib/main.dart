import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/nexsoft/screen/user_list/user_list_controller.dart';
import 'package:sample_project/nexsoft/screen/user_main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserListController()),
        // Diğer provider'lar varsa buraya eklenir
        // örn: ChangeNotifierProvider(create: (_) => FavoritesViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: const UserMainScreen(),
    );
  }
}
