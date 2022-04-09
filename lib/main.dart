import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade 02 - Layout Playground',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade 02 - Layout Playground'),
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Victor Tazoi'),
                subtitle: Text('Estudante'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  TextButton(
                    child: Text('GitHub'),
                    onPressed: gitUrl,
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

gitUrl() async {
  var gitHubUrl = "https://github.com/VictorTazoi";

  if (await canLaunch(gitHubUrl)) {
    await launch(gitHubUrl);
  } else {
    throw 'Não foi possível encontrar $gitHubUrl';
  }
}

launch(String gitHubUrl) {}

canLaunch(String gitHubUrl) {}
