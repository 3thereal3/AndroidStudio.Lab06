import 'package:flutter/material.dart';
import 'sign_in_screen.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Черный фон для контраста
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Прозрачный фон для AppBar
        title: Text(
          "Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.white, // Белый цвет текста заголовка
          ),
        ),
        centerTitle: true,
        elevation: 0, // Без тени
        iconTheme: IconThemeData(
          color: Colors.blue, // Цвет стрелочки назад
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Иконка вместо аватарки
            Icon(
              Icons.person_add, // Иконка для регистрации
              size: 120,
              color: Colors.blue, // Синий цвет для акцента
            ),
            SizedBox(height: 40),
            // Поле для ввода имени пользователя
            TextField(
              style: TextStyle(color: Colors.white), // Белый текст внутри поля
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.grey), // Серый цвет метки
                fillColor: Colors.black,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue, width: 2), // Синий при фокусе
                ),
              ),
            ),
            SizedBox(height: 16),
            // Поле для ввода логина
            TextField(
              style: TextStyle(color: Colors.white), // Белый текст внутри поля
              decoration: InputDecoration(
                labelText: 'Login',
                labelStyle: TextStyle(color: Colors.grey), // Серый цвет метки
                fillColor: Colors.black,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue, width: 2), // Синий при фокусе
                ),
              ),
            ),
            SizedBox(height: 16),
            // Поле для ввода пароля
            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white), // Белый текст внутри поля
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.grey), // Серый цвет метки
                fillColor: Colors.black,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue, width: 2), // Синий при фокусе
                ),
              ),
            ),
            SizedBox(height: 32),
            // Кнопка регистрации
            ElevatedButton(
              onPressed: () => {
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return const AlertDialog(
                      title: Text('Message'),
                      content: Text("Need to implement"),
                    );
                  },
                )
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Синий цвет для кнопки
                foregroundColor: Colors.white, // Белый текст на кнопке
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Округлые углы
                ),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50), // Паддинги для кнопки
              ),
            ),
            SizedBox(height: 24),
            // Кнопка возврата на экран входа
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Back to Login",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue, // Синий текст
                side: BorderSide(color: Colors.blue, width: 2), // Синяя рамка
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Округлые углы
                ),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50), // Паддинги
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: Text(
          'Цю роботу виконав Lomaka Dmytro, студент КН-32',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ),

    );
  }
}
