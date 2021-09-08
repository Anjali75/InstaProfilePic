import 'package:flutter/material.dart';
import 'first_page.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late final Map mapResponse;

  late final List listofgraphql;

  @override
  //late Map mapResponse;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /*Text(
                "Trial",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),*/
              //Text(mapResponse.toString(), style: TextStyle(fontSize: 30),)
              mapResponse == null
                  ? Container()
                  : Text(
                      mapResponse['graphql'].toString(),
                      style: TextStyle(fontSize: 30),
                    ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Image.network(listofgraphql[index]['profile_pic_url'])
                      ],
                    ),
                  );
                },
                itemCount: listofgraphql == null ? 0 : listofgraphql.length,
              )
            ],
          ),
        ));
  }
}
