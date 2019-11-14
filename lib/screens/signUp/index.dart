import 'package:flutter/material.dart';
import 'components/SignUpCardContent.dart';

class SignUpScreenScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: const<Color>[
                    Color(0xffeccc68),
                    Color(0xffff6b81)
                  ]
              )
          ),
          child: ListView(
            children: <Widget>[
              Image(
                image: const AssetImage('assets/images/logo.png'),
                height: 250.0,
              ),
              Card(
                  margin: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  color: const Color(0Xffffeaa7),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: SignUpCardContent(),
                  )
              ),
            ],
          ),
        )
    );
  }
}