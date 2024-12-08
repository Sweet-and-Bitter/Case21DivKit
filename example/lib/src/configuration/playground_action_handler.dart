import 'dart:async';
import 'package:divkit/divkit.dart';
import 'package:flutter/material.dart';
import 'package:example/src/pages/home.dart';

const _demoActivity = 'demo_activity';
const _schemeDivAction = 'div-action';
const _activityLogin = 'login';
const _paramAction = 'action';

class PlaygroundActionHandler implements DivActionHandler {
  final GlobalKey<NavigatorState> _navigator;

  NavigatorState get _navigationManager =>
      Navigator.of(_navigator.currentContext!);

  PlaygroundActionHandler({
    required GlobalKey<NavigatorState> navigator,
  }) : _navigator = navigator;

  @override
  bool canHandle(DivContext context, DivActionModel action) {
    final uri = action.url;
    if (uri != null) {
      if (uri.scheme == _schemeDivAction &&
          uri.host == _demoActivity &&
          [
            _activityLogin,
          ].contains(uri.queryParameters[_paramAction])) {
        return true;
      }
    }
    return false;
  }

  @override
  FutureOr<bool> handleAction(
    DivContext context,
    DivActionModel action,
  ) async {
    final uri = action.url;
    if (uri == null) {
      return false;
    }
    return await handleUrlAction(context, uri);
  }

  Future<bool> handleUrlAction(DivContext context, Uri uri) async {
    if (uri.scheme != _schemeDivAction || uri.host != _demoActivity) {
      return false;
    }
    switch (uri.queryParameters[_paramAction]) {
      case _activityLogin: 
        final username = context.variables.current['username']; 
        final password = context.variables.current['password']; 

        if (username.toString() == 'admin' && password == 'admin') {
          showSnackBar('Login successful!');
          _navigationManager.push(
            MaterialPageRoute(builder: (_) => const HomePage()),
          );
        } 
        else {
          showSnackBar('Invalid credentials. Please try again.');
          print("$username , $password");
        }
        break;
      default:
        return false;
    }

    return true;
  }

  void showSnackBar(String text) {
    ScaffoldMessenger.of(_navigator.currentContext!).hideCurrentSnackBar();
    ScaffoldMessenger.of(_navigator.currentContext!).showSnackBar(
      SnackBar(
        showCloseIcon: true,
        content: Text(text),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
