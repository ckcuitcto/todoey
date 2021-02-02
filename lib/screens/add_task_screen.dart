import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all( 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, color: Colors.lightBlueAccent,),
            ),
            SizedBox(height: 20),
            TextField(autofocus: true,textAlign: TextAlign.center,),
            SizedBox(height: 20),
            RaisedButton(onPressed: (){},child: Text("Add", style: TextStyle(color: Colors.white),), color: Colors.lightBlueAccent,)
          ],
        ),
      ),
    );
  }
}
