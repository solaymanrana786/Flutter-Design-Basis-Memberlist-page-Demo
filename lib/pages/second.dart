import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RaisedButton(
              elevation: 20,
              onPressed: (){
                Navigator.pop(context);
              },
              color: Colors.red,
              child: Text("Go back", style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
