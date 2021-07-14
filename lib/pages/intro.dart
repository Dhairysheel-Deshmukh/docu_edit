import 'package:flutter/material.dart';
import 'package:docu_edit/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class Intro extends StatefulWidget {
  @override
  IntroState createState() {
    IntroState pageState = IntroState();
    return pageState;
  }
}

class IntroState extends State<Intro> {
  List<String> items = List<String>.generate(0, (index) {
    return "Item - $index";
  });

  final teController = TextEditingController(
    text: "",
  );

  @override
  void dispose() {
    teController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'DOCUMENT EDITOR',
        ),

      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 70,
              alignment: Alignment(0, 0),
              color: Colors.orange,
              child: Text(
                "To remove an item, swipe the tile to the right or tap the trash icon.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                  key: Key(item),
                  direction: DismissDirection.startToEnd,
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: Icon(Icons.document_scanner),
                      title: Text(item),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            items.removeAt(index);
                          });
                        },
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return HomePage();
                        }));

                      },
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });
                  },
                );
              },
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: <Widget>[
                Text("File Name:"),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: teController,
                      onSubmitted: (text) {
                        setState(() {
                          if (teController.text != "") {
                            items.add(teController.text);
                          }
                        });
                        teController.clear();
                      },
                    ),
                  ),
                ),
                RaisedButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      if (teController.text != "") {
                        items.add(teController.text);
                      }
                    });
                    teController.clear();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}