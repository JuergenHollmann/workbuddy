// Custom Suggestions

import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:workbuddy/user_model.dart';

import 'user_data.dart';

class UserSelect extends StatefulWidget {
  const UserSelect({super.key});

  @override
  State<UserSelect> createState() => _UserSelectState();
}

class _UserSelectState extends State<UserSelect> {
  final List<UserModel> users = [];

  @override
  void initState() {
    super.initState();
    for (var element in usersData) {
      users.add(UserModel.fromJson(element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchField<UserModel>(
        maxSuggestionsInViewPort: 10,
        itemHeight: 80,
        hint: 'Suche nach E-Mail-Adressen',
        suggestionsDecoration: SuggestionDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(8.0),
            bottomRight: Radius.circular(8),
          ),
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),

        /*--------------------------------- *** ---*/
        // initialValue: SearchFieldListItem<UserModel>(
        //   users[2].name,
        //   child: Container(
        //     color: Colors.red,
        //     width: 100,
        //     alignment: Alignment.center,
        //     child: Text(
        //       users[2].name,
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        // ),
        /*--------------------------------- *** ---*/

        suggestionItemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            shape: BoxShape.rectangle,
            border: Border.all(
                color: Colors.transparent,
                style: BorderStyle.solid,
                width: 1.0)),
        searchInputDecoration: SearchInputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          border: const OutlineInputBorder(),
        ),
        marginColor: Colors.grey.shade300,
        suggestions: users
            .map((e) => SearchFieldListItem<UserModel>(e.name,
                child: UserTile(user: e)))
            .toList(),
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final UserModel user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 60,
        backgroundImage: NetworkImage(user.avatar),
      ),
      title: Text(user.name),
      subtitle: Text(user.email),
    );
  }
}
