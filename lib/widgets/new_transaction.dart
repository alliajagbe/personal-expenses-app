import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function new_tx;
  final expenseController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.new_tx);

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
              decoration: InputDecoration(
                labelText: 'Expense Name',
              ),
              controller: expenseController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
            ),
            ElevatedButton(
              onPressed: () {
                new_tx(
                  expenseController.text,
                  double.parse(amountController.text),
                );
              },
              child: Text('Add Expense'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.orange,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
