import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  const borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(36)),
    borderSide: BorderSide(
      color: const Color(0xFFeceff1), width: 2));

    return MaterialApp(

      home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/wall.jpg'),
                fit: BoxFit.cover,
              )
            ),
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Column(children: [
            SizedBox(height: 80, ),
                const SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/img.png'),),),
                SizedBox(height: 20, ),
                Text("Введите логин в виде 10 цифр номера телефона",
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
                SizedBox(height: 20, ),
                SizedBox(width: 224,
                  child: TextField(decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffd6dce5),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: ' Телефон',

                  ),),
                ),
                SizedBox(height: 20, ),
                SizedBox(width: 224,
                  child: TextField(obscureText: true,
                    decoration: InputDecoration(

                    filled: true,
                    fillColor: Color(0xffd6dce5),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Пароль',
                  ),),
                ),
                SizedBox(height: 28,),
                SizedBox(width: 154, height: 42, child:
                ElevatedButton(onPressed: () {}, child: Text("Войти"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0079D0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0),
                  )
                ),
                )
                ),
                SizedBox(height: 32, ),
                InkWell(child: Text('Регистрация'),  onTap: () {}),
                SizedBox(height: 20, ),
                InkWell(child: Text('Забыли пароль?'),  onTap: () {}),
        ] , ),
            ),
          )
      ),
    );
  }
}

