import 'package:docu_edit/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {

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

        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
      ),
      body: Container(
        //width: 500,
        //height: 500,
        child: new ListView(
            children: [

              SizedBox(height: 50,),
              Card(
                elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.document_scanner),
                  title: Text('Document 1'),
                  subtitle: Text('Recently Updated On --/--/----'),
                  trailing: Icon(Icons.delete),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomePage();
                    }));

                  },
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.document_scanner),
                  title: Text('Document 2'),
                  subtitle: Text('Recently Updated On --/--/----'),
                  trailing: Icon(Icons.delete),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomePage();
                    }));

                  },
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.document_scanner),
                  title: Text('Document 3'),
                  subtitle: Text('Recently Updated On --/--/----'),
                  trailing: Icon(Icons.delete),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return HomePage();
                    }));

                  },
                ),
              ),
            ]
        ),
      ),
    );
  }
}
