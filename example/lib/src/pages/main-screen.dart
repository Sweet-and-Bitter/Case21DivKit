import 'dart:convert';

import 'package:divkit/divkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../configuration/playground_action_handler.dart';
import '../state.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _MainScreen();
}

class _MainScreen extends State<Main_Screen> {
  var showInfo = true;

  final variableStorage = DefaultDivVariableStorage();

  @override
  void initState() {
    super.initState();
    variableStorage.put(DivVariableModel(name: demoInputVariable, value: ''));
    variableStorage.put(DivVariableModel(name: 'username', value: '')); // Переменная для имени пользователя
    variableStorage.put(DivVariableModel(name: 'password', value: '')); // Переменная для пароля
  }

  Future<DivKitData> load() async {
    final jsonData = await jsonDecode(
      await rootBundle.loadString(
        'assets/application/demo.json', // Путь к вашему JSON-файлу с разметкой для авторизации
      ),
    );
    return DefaultDivKitData.fromJson(jsonData).build();
  }

  void clearInputs() {
    variableStorage.update(DivVariableModel(name: 'username', value: '')); // Сбрасываем имя пользователя
    variableStorage.update(DivVariableModel(name: 'password', value: '')); // Сбрасываем пароль
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFDCAE),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: clearInputs, // Вызываем метод для очистки полей
          ),
        ],
      ),
      backgroundColor: const Color(0xffFFDCAE),
      body: Column(
        children: [
          if (showInfo)
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Enter your credentials to log in!',
                style: TextStyle(fontSize: 18),
              ),
            ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: FutureBuilder<DivKitData>(
                future: load(),
                builder: (_, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }
                  if (snapshot.hasData) {
                    final data = snapshot.data;
                    if (data != null) {
                      return Listener(
                        onPointerDown: (_) {
                          if (showInfo) {
                            setState(() {
                              showInfo = false;
                            });
                          }
                        },
                        child: SafeArea(
                          child: DivKitView(
                            data: data,
                            actionHandler: PlaygroundActionHandler(
                              navigator: navigatorKey,
                            ),
                            variableStorage: variableStorage,
                          ),
                        ),
                      );
                    }
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}