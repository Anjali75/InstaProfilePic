import 'dart:convert';
import 'dart:ui';

import 'package:demo/model/InstaResponse.dart';
import 'package:demo/screens/first_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userName = "";
  bool _isLoading = false;
  Future getData(String userName) async {
    setState(() {
      _isLoading = true;
    });
    try {
      http.Response response = await http.get(
        Uri.parse("https://www.instagram.com/luvx.dev/?__a=1"),
      );
      print(response.body);
      if (response.statusCode == 200) {
        final mapResponse = jsonDecode(response.body);
        print("####################### 1st test");
        final InstaResponse instaresponse = InstaResponse.fromMap(mapResponse);
        print("####################### 2nd test");
        setState(() {
          _isLoading = false;
        });
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ProfilePage(data: instaresponse),
          ),
        );
      }
    } catch (error) {
      setState(() {
        _isLoading = false;
      });
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Try Again"),
                content: Text("Something went Wrong ! Please try Again"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Try again!"))
                ],
              ));
      print(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Insta Dp Downlaoder"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 50,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  userName = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          OutlinedButton.icon(
            onPressed: () {
              if (userName == "") {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Inavalid Data"),
                    content: Text(
                      "Please Enter the Username",
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Try Again",
                          ),
                        ),
                      )
                    ],
                  ),
                );
              } else {
                getData(userName);
              }
            },
            icon: Icon(
              Icons.search,
              size: 25.0,
            ),
            label: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Search",
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
