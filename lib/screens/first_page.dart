import 'package:demo/model/InstaResponse.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final InstaResponse data;

  const ProfilePage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.graphql.user.fullName!),
      ),
    );
  }
}
