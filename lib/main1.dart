import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple interest calculator",
    home: SIForm(),
  ));
}

class SIForm extends StatefulWidget {
  @override
  _SIFormState createState() => _SIFormState();
}

class _SIFormState extends State<SIForm> {
  // var _currencies = ['Rupees', 'Dollars', 'Pounds'];
  final commonPadding = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple interest calculator"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            getImageAsset(),
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Principal',
                    hintText: 'Enter Principal eg:100000',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Rate of Interest',
                    hintText: 'Enter Interest Rate',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                )),
            Row(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'years',
                    hintText: 'No of years eg:100000',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget getImageAsset() {
  AssetImage assetImage = AssetImage('images/bank.jpeg');
  Image image = Image(
    image: assetImage,
    width: 125.0,
    height: 125.0,
  );
  return Container(
    child: image,
    margin: EdgeInsets.all(10.0 * 10),
  );
}
