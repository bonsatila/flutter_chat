import 'dart:html';

import 'package:flutter/material.dart';
import 'package:messaging/app.dart';
import 'package:messaging/screens/home_screen.dart';
import 'package:messaging/theme.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

void main() {
  final client = StreamChatClient(stream_key);
  runApp( MyApp(
    client: client,
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({
    Key? key, 
    required this.client
  }) : super (key: key);

  final StreamChatClient client;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      title: 'BT private DM',
      builder: (context, child){
        return StreamChatCore(
          client: client,
          child: child!,
        );
      },
      home: HomeScreen(),
    );
  }
}