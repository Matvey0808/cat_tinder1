import 'package:cat_tinder1/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _emailController =
      TextEditingController(); // Используем email вместо имени пользователя
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Регистрация'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              keyboardType:
                  TextInputType.emailAddress, // Подсказка для ввода email
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Пароль',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Подтвердите пароль',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              _errorMessage,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () async {
                if (_passwordController.text ==
                    _confirmPasswordController.text) {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                      email: _emailController.text.trim(),
                      password: _passwordController.text.trim(),
                    );
                    if (newUser.user != null) {
                      // Регистрация прошла успешно
                      print('Регистрация успешна: ${newUser.user!.uid}');
                      // TODO: Перенаправить пользователя на другой экран (например, HomeScreen)
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homescreen(),
                        ), // Замени на свой HomeScreen
                      );
                    }
                  } on FirebaseAuthException catch (e) {
                    print('Ошибка регистрации: ${e.code} - ${e.message}');
                    setState(() {
                      _errorMessage = _handleFirebaseError(e);
                    });
                  } catch (e) {
                    print('Непредвиденная ошибка: $e');
                    setState(() {
                      _errorMessage = 'Произошла непредвиденная ошибка.';
                    });
                  }
                } else {
                  setState(() {
                    _errorMessage = 'Пароли не совпадают';
                  });
                }
              },
              child: Text('Зарегистрироваться'),
            ),
          ],
        ),
      ),
    );
  }

  String _handleFirebaseError(FirebaseAuthException error) {
    switch (error.code) {
      case 'email-already-in-use':
        return 'Этот email уже зарегистрирован.';
      case 'invalid-email':
        return 'Некорректный формат email.';
      case 'weak-password':
        return 'Пароль слишком слабый.';
      default:
        return 'Произошла ошибка при регистрации: ${error.message}';
    }
  }
}
