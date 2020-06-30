import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (value) => titleInput = value,
              controller: titleInputController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              //onChanged: (value) => amountInput = value,
              controller: amountInputController,
            ),
            FlatButton(
              onPressed: () {
                // print(amountInput);
                print(amountInputController.text);
              },
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
