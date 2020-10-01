import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        body: SafeArea(
          child: Center(
            //чтобы отцентровать для веба, на мобильной версии центруется
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(
                    'https://sun9-62.userapi.com/c624924/v624924588/44c3f/7Bo6Zoctx6s.jpg'),
              ),
              Text(
                'Школа 1',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blue[100],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'Средняя школа',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[200],
                    letterSpacing: 3,
                    fontFamily: 'Source Sans Pro'),
              ),
              SizedBox(
                height: 10,
                width: 200,
                child: Divider(color: Colors.white),
              ),
              Container(
                constraints: BoxConstraints(
                    minWidth: 100,
                    maxWidth:
                        600), //этот контейнер и constraint для веба, чтобы строка не была слишком длинной
                child: Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 20.0,
                      color: Colors.blue,
                    ),
                    title: Text(
                      '+78137936886',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue,
                          fontFamily: 'Source Sans Pro'),
                    ),
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(
                    minWidth: 100,
                    maxWidth:
                        600), //этот контейнер и constraint для веба, чтобы строка не была слишком длинной
                child: Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 20.0,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'prz-sch1@yandex.ru',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.blue,
                            fontFamily: 'Source Sans Pro'),
                      )),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
