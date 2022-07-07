import 'package:flutter/material.dart';

import 'package:slicing/login_page.dart';
import 'package:slicing/product.dart';
import 'package:slicing/register_page.dart';
import 'package:slicing/style.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            margin: EdgeInsets.only(top: 250),
            child: Image.network(
              'https://www.creatopy.com/blog/wp-content/uploads/2020/05/apple-think-different-slogan.png',
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 22, right: 22),
            margin: EdgeInsets.only(top: 29),
            height: 56,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) {
                    return Product();
                  })));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(30, 35, 44, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Text(
                  'Login',
                  style: loginText,
                )),
          ),
          Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              margin: EdgeInsets.only(top: 15, bottom: 29),
              height: 56,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: ((context) {
                      return RegisterPage();
                    })));
                  },
                  style: TextButton.styleFrom(
                      side: BorderSide(
                        color: Color.fromRGBO(30, 35, 44, 1),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text('Register', style: RegisterText))),
          Center(
              child: Text(
            'Continue as a Guest',
            style: guestText,
          ))
        ]),
      ),
    );
  }
}
