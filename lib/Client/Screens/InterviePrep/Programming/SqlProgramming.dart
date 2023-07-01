import 'package:codebooter_study_app/AppState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SqlProgramming extends StatelessWidget {
  const SqlProgramming({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'SQL Programming',
          style: TextStyle(
              color: appState.isDarkMode ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
