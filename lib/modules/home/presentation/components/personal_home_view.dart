import 'package:flutter/material.dart';
import 'package:bank_in_space/modules/home/presentation/components/decorations.dart';

class PersonalHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'My Wallet',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Nome:',
                        style: TextStyle(fontSize: 17.0, color: Colors.purple),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Spacer(),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Oc:',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '\$0,18',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(8, 16),
                    color: Colors.black12,
                    blurRadius: 6,
                  ),
                  BoxShadow(
                    offset: Offset(-2, -3),
                    color: Colors.purple,
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
