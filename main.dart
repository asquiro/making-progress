import "package:flutter/material.dart";
import "dart:math";

void main() {
  runApp(MaterialApp(
    title: "Exploring UI Widget",
    home: Scaffold(
      appBar: AppBar(
        title: Text("My Lucky Number"),
      ),
      body: Text("MY lucky number is $generateListElement()"),
      floatingActionButton: FloatingActionButton(onPressed: () {
        debugPrint("Fab clicked");
      }),
    ),
  ));
}

int generateListElement() {
  var random = Random();
  int luckNumber = random.nextInt(12);
  return luckNumber;
}

Widget getListElement() {
  var listView = ListView(children: <Widget>[
    ListTile(
      leading: Icon(Icons.umbrella),
      trailing: Icon(Icons.ice_skating),
      title: Icon(Icons.tab),
      subtitle: Icon(Icons.e_mobiledata),
    )
  ]);
  return listView;
}

List<String> generateLongList() {
  var longList = List<String>.generate(100, (counter) => "Item $counter");

  return longList;
}

Widget showList() {
  var listItem = generateLongList();
  var list = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
        title: Text(listItem[index]),
        onTap: () {
          showSnackBar(context);
        });
  });
  return list;
}

class generateFlightTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: RaisedButton(
            child: Center(
                child: Text(
              "Book Flight",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.lightBlue,
                  fontSize: 15.0),
            )),
            elevation: 4.0,
            onPressed: () {
              bookFlight();
            }));
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("You have Successfully booked flight"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}

void showSnackBar(BuildContext context) {
  var snackBar = SnackBar(
    content: Text(""),
  );
  Scaffold.of(context).ShowSnackBar(snackBar);
}
