import 'package:bank_in_space/modules/home/domain/entities/transaction.dart';
import 'package:flutter/material.dart';

class RecentTransaction extends StatelessWidget {
  final List<Transaction> recentTransactions =
      Transaction.getRecentTransactions();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Text(
              'My transactions',
              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: ListView.builder(
                itemCount: recentTransactions.length,
                itemBuilder: (context, index) =>
                    _buildTransactionView(context, recentTransactions[index])),
          ),
        ],
      ),
    );
  }

  InkWell _buildTransactionView(
          BuildContext context, Transaction recentTransaction) =>
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AnalyticsScreen()));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Theme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(3, 5),
                color: Colors.black12,
                blurRadius: 10,
              ),
              BoxShadow(
                offset: Offset(-1, -1),
                color: Colors.white,
                blurRadius: 6,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                recentTransaction.icon,
                color: Colors.purple,
              ),
              SizedBox(width: 15.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    recentTransaction.title,
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    recentTransaction.dateTime,
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey[300]),
                  ),
                ],
              ),
              Spacer(),
              Text(recentTransaction.amount,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: (recentTransaction.amount.contains('-')
                          ? Colors.black
                          : Colors.green))),
            ],
          ),
        ),
      );
}
